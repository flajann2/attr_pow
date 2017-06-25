require 'attr_pow'
require 'pp'

class Foobar
  attr_pow :shopper, hooks: true

  def customers &block
    shopper_add &block
  end

  def purchase stype
    shopper_shops(stype)
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

pp fb.purchase :shirt
pp fb.purchase :pants
