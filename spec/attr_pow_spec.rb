require_relative 'spec_helper'

describe Module do
  attr_pow :foo, default: 20
  attr_pow :bar, default: 'stringy affair'
  attr_pow :hook_func, hooks: true

  it "default & basic functionality" do
    expect(foo).to eq(20)
    expect(bar).to eq('stringy affair')
  end

  it "hooks" do
    hook_func_add ->() { [:h, 1]  }
    hook_func_add ->() { [:h, 2]  }
    expect()
  end

  it "queues"
end
