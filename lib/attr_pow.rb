

class AttrPowException < Exception ; end
class Module
  # Defaultable attributes of neat attributes.
  #
  # If hooks: true is given, two hook functions are
  # created:
  ## <sym>_add() -- add a hook
  ## <sym>_set() -- set a hook, overwriting all other hooks set or added.
  ## <sym>_clear -- clear all hooks
  ## <sym>_none? -- return true if no hooks are defined.
  ## <sym>_one? -- return true if exactly one hook is defined.
  ## <sym>_hook() -- for passing unnamed parameters to a singular hook.
  ## <sym>_np_hook() -- for passing unnamed parameters to a singular hook.
  ## <sym>_hook_itself() -- for getting the proc reference to the hook.
  ## <sym>_hooks() -- for passing unnamed parameters.
  ## <sym>_np_hooks() -- for passing a named parameter list.
  #
  # For *_hook(), the function returns the single result.
  # For *_hooks(), the hook function return an array of results
  # from all the actual registered hooks called.
  def attr_pow (sym,
                default: nil,
                cloneable: nil,
                hooks: false,
                queue: false)
    svar = "@#{sym}"
    
    # Guess what clonable should be.
    # This is meant to cover "90%" of the cases.
    cloneable = case
                when default.nil?
                  false
                when default.kind_of?(Numeric)
                  false
                else
                  true
                end if cloneable.nil?
    
    # Sanity checks
    raise AttrPowException("Both hooks and queue cannot both be set for #{sym}.") if hooks and queue
    raise AttrPowException("Defaults cannot be defined for hooks and queues for #{sym}.") if (hooks or queue) and not default.nil?
    
    if hooks
      default = []
      cloneable = true
      hook_setup sym
    end
    
    if queue
      default = QDing.new
      cloneable = true
      queue_setup sym
    end
    
    define_method("#{sym}=") do |v|
      instance_variable_set(svar, v)
    end unless hooks or queue
    
    # TODO: Enhance this getter method for performance.
    define_method(sym) do
      instance_variable_set(svar,
                            instance_variable_get(svar) ||
                            ((cloneable) ? default.clone
                             : default))
    end
  end
  
  private
  def hook_setup(sym)
    define_method("#{sym}_add") do |&hook|
      send(sym) << hook
    end
    
    define_method("#{sym}_set") do |&hook|
      send(sym).clear
      send(sym) << hook
    end
    
    define_method("#{sym}_clear") do
      send(sym).clear
    end
    
    define_method("#{sym}_none?") do
      send(sym).empty?
    end
    
    define_method("#{sym}_one?") do
      send(sym).size == 1
    end
    
    # hooks with named parameters
    define_method("#{sym}_np_hooks") do | **hparams |
      send(sym).map{|funct| funct.(**hparams)}
    end

    # hooks with traditional parameters
    define_method("#{sym}_hooks") do |*params|
      send(sym).map{|funct| funct.(*params)}
    end

    # TODO: DRY up the following functions, which does size checking in exactly the same way.
    # Single hook with named parameters
    define_method("#{sym}_np_hook") do | **hparams |
      sz = send(sym).size
      raise AttrPowException.new("#{sym}_np_hook must have exactly one hook (#{sz})") unless sz == 1
      send(sym).map{|funct| funct.(**hparams)}.first
    end

    # Single hook with traditional parameters
    define_method("#{sym}_hook") do |*params|
      sz = send(sym).size
      raise AttrPowException.new("#{sym}_hook must have exactly one hook (#{sz})") unless sz == 1
      send(sym).map{|funct| funct.(*params)}.first
    end
    
    # Get the singular hook function
    define_method("#{sym}_hook_itself") do
      sz = send(sym).size
      raise AttrPowException.new("#{sym}_hook_itself must have exactly one hook (#{sz})") unless sz == 1
      send(sym).first
    end
  end

  def queue_setup(sym)
    # Add boilerplate code for queues here.
  end
end
