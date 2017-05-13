require_relative 'spec_helper'
require 'awesome_print'
require 'attr_pow'

describe Module do
  attr_pow :foo, default: 20
  attr_pow :bar, default: 'stringy affair'
  attr_pow :hook_func, hooks: true
  
  it "basic functionality" do
    expect(foo).to eq(20)
    expect(bar).to eq('stringy affair')
  end
end
