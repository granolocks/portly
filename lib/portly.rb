require 'csv'
require 'json'

require 'portly/constants'
require 'portly/version'

module Portly
  def self.lookup(port_number)
    port_number = port_number.to_s # JSON sets hash keys to strings
    data = JSON.parse(File.read(JSON_FILE))
    data[port_number]
  end
end
