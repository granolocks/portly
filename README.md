# Portly

## Install 

Install simply with gem: 

```sh
gem install portly
```

## Lookup a port

```ruby
require 'portly'
Portly.lookup 22
[{"service_name"=>"ssh", "port_number"=>22, "transport_protocol"=>"tcp", "description"=>"The Secure Shell (SSH) Protocol", "assignee"=>nil, "contact"=>nil, "registration_date"=>nil, "modification_date"=>nil, "reference"=>"[RFC4251]", "service_code"=>nil, "known_unauthorized_uses"=>nil, "assignment_notes"=>"Defined TXT keys: u=<username> p=<password>"}, {"service_name"=>"ssh", "port_number"=>22, "transport_protocol"=>"udp", "description"=>"The Secure Shell (SSH) Protocol", "assignee"=>nil, "contact"=>nil, "registration_date"=>nil, "modification_date"=>nil, "reference"=>"[RFC4251]", "service_code"=>nil, "known_unauthorized_uses"=>nil, "assignment_notes"=>"Defined TXT keys: u=<username> p=<password>"}, {"service_name"=>"ssh", "port_number"=>22, "transport_protocol"=>"sctp", "description"=>"SSH", "assignee"=>"[Randall_Stewart]", "contact"=>"[Randall_Stewart]", "registration_date"=>nil, "modification_date"=>nil, "reference"=>"[RFC4960]", "service_code"=>nil, "known_unauthorized_uses"=>nil, "assignment_notes"=>"Defined TXT keys: u=<username> p=<password>"}] 
```

## Data Source:

The data is extracted from the CSV file in the `data/` directory. This file is 
collected from the [IANA registry here](http://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml).


