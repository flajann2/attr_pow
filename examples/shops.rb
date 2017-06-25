require 'attr_pow'
require 'pp'

class Foobar
  attr_pow :shopper, hooks: true
  attr_pow :shop_queue, queue: true

  def customers &block
    shopper_add &block
  end

  def purchase stype
    shopper_hooks(stype)
  end
end

fb = Foobar.new
fb.customers do |stype|
  puts "Bob: #{stype} bought"
  "bob_#{stype}"
end

fb.customers do |stype|
  puts "James: #{stype} bought"
  "james_#{stype}"
end

bag1 = fb.purchase :shirt
bag2 = fb.purchase :pants

pp bag1
pp bag2

fb.shop_queue << bag1 << bag2
puts ""
