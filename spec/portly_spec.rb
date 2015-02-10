require 'spec_helper'

RSpec.describe Portly do
  it "has a 'lookup' method" do
    expect(Portly.methods).to include(:lookup)
  end

  describe 'lookup' do
    it "has an arity of one" do
      expect(Portly.method(:lookup).arity).to eq(1)
    end

    it "returns an array of information for a given port number" do
      expect(Portly.lookup(22).class).to eq(Array)
    end

    it "accepts a string or integer" do
      expect(Portly.lookup(22)).to eq(Portly.lookup("22"))
    end
  end
end
