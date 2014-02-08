require 'spec_helper'

describe LXC::Extra do

  before(:all) do
    c = LXC::Container.new('test')
    c.create('ubuntu') unless c.defined?
    c.start unless c.running?
  end

  after(:all) do
    c = LXC::Container.new('test')
    c.stop if c.running?
  end

  context '#execute' do
    let(:ct) do
      LXC::Container.new('test')
    end

    it 'should return apropriate object' do
      o = ct.execute{ 'FooBar' }
      expect(o).to eq('FooBar')
    end

    it 'should raise legitimate exceptions' do
      class TestError < RuntimeError; end
      expect do
        ct.execute {raise TestError}
      end.to raise_error(TestError)
    end
  end
end
