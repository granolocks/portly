$:.unshift(File.dirname(File.expand_path('../lib/portly.rb',__FILE__)))
require 'portly'

desc "Generate JSON file from CSV"
task "generate" do 
  ports = []

  CSV.foreach(Portly::CSV_FILE, headers: true) do |row|
    headers = row.headers.map{|x| x.downcase.gsub(/\s/,'_')}
    fields = row.fields
    entry = Hash[headers.zip(row.fields)]
    entry["port_number"] = entry["port_number"].to_i
    ports << entry
  end

  ports_hash = ports.each_with_object({}) do |port, collector|
    collector[port["port_number"].to_i] ||= []
    collector[port["port_number"].to_i] << port
  end

  File.write(Portly::JSON_FILE, JSON.generate(ports_hash))
end


task :environment do
  base_path = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
  $LOAD_PATH.unshift(base_path) unless $LOAD_PATH.include?(base_path)

  require 'portly'
end

desc "Start a pry session with the code loaded"
task :console => [:environment] do
  require 'pry'
  pry
end
