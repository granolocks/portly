$:.unshift(File.dirname(File.expand_path('../lib/portly.rb',__FILE__)))
require 'portly'
require 'csv'
require 'json'

DATA_DIR = File.expand_path('../data/',__FILE__)
CSV_FILE = File.join(DATA_DIR, "service-names-port-numbers.csv")
JSON_FILE = File.join(DATA_DIR, "service-names-port-numbers.json")

desc "Generate JSON file from CSV"
task "generate" do 
  ports = []

  CSV.foreach(CSV_FILE, headers: true) do |row|
    headers = row.headers.map{|x| x.downcase.gsub(/\s/,'_')}
    fields = row.fields
    entry = Hash[headers.zip(row.fields)]
    entry["port_number"] = entry["port_number"].to_i
    ports << entry
  end

  ports_hash = ports.each_with_object({}) do |port, collector|
    collector[port["port_number"]] ||= []
    collector[port["port_number"]] << port
  end

  File.write(JSON_FILE, JSON.generate(ports_hash))
end


