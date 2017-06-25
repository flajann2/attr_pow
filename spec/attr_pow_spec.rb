require_relative 'spec_helper'

describe Module do
  attr_pow :foo, default: 20
  attr_pow :bar, default: 'stringy affair'
  attr_pow :hook_func, hooks: true
  attr_pow :queue, queue: true

  it "default & basic functionality" do
    expect(foo).to eq(20)
    expect(bar).to eq('stringy affair')
  end

  it "hooks" do
    hook_func_add { [:h, 1] }
    hook_func_add { [:h, 2] }
    result = hook_func_hooks()
    expect(result.first).to eq [:h, 1]
    expect(result.last).to  eq [:h, 2]
  end

  it "queues" do
    t = Thread.new { queue << 1 << 2 << 3; }
    expect(queue.next).to eq 1
    expect(queue.next).to eq 2
    expect(queue.next).to eq 3
    expect(queue.empty?).to be_truthy
    t.join
  end
end
