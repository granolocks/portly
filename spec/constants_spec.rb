require 'spec_helper'

RSpec.describe "Portly Constants" do
  it "include a DATA_DIR" do
    expect(Portly::DATA_DIR).to eq(File.expand_path('../../data', __FILE__))
  end

  it "include a CSV_FILE" do
    expect(Portly::CSV_FILE).to eq(File.expand_path('../../data/service-names-port-numbers.csv', __FILE__))
  end

  it "include a JSON_FILE" do
    expect(Portly::JSON_FILE).to eq(File.expand_path('../../data/service-names-port-numbers.json', __FILE__))
  end
end
