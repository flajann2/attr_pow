require 'attr_pow'
require 'pp'

class Foobar
  attr_pow :hooker, hooks: true

  def johns &block
    hooker_add &block
  end

  def deliver_service stype
    results = hooker_hooks(stype)
  end
end

fb = Foobar.new
fb.johns do |stype|
  puts "Bob: #{stype} received"
  "bob_#{stype}"
end

fb.johns do |stype|
  puts "James: #{stype} received"
  "james_#{stype}"
end

pp fb.deliver_service :back_rub
pp fb.deliver_service :kiss
