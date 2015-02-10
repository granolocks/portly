# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'portly/version'

Gem::Specification.new do |spec|
  spec.name          = "louis"
  spec.version       = Portly::VERSION
  spec.authors       = ["Gabe Koss"]
  spec.email         = ["gabe@gabekoss.com"]
  spec.summary       = %q{Library for looking up TCP port meta information.}
  spec.description   = %q{This library exposes information from the IANA Service Name and Transport Portocolo Port number database}
  spec.homepage      = ""
  spec.license       = "AGPLv3"

  file_list = `git ls-files -z`.split("\x0")
  file_list.delete('data/service-names-port-numbers.csv')

  spec.files         = file_list
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "coveralls", "0.7.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rdoc"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "yard"
end

