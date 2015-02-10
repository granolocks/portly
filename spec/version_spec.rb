describe Portly::VERSION do
  it "is a string value" do
    expect(Portly::VERSION.class).to eq(String)
  end

  it "consists of three numbers separated by periods" do
    pattern = /^\d\.\d\.\d$/
    expect(!!(Portly::VERSION =~ pattern)).to eq(true)
  end
end
