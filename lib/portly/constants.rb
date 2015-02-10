module Portly
  DATA_DIR  = File.expand_path(File.join(
    '..', '..', '..', 'data'),__FILE__)
  CSV_FILE  = File.join(DATA_DIR, "service-names-port-numbers.csv")
  JSON_FILE = File.join(DATA_DIR, "service-names-port-numbers.json")
end
