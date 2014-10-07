# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'payoneer/version'

Gem::Specification.new do |spec|
  spec.name        = 'payoneer-payout'
  spec.version     = Payoneer::VERSION
  spec.summary     = 'A client for the Payoneer partner API'
  spec.description = 'A client for the Payoneer partner API'
  spec.authors     = ['Stanislav Mekhonoshin', 'Helge Rausch', 'Niklas Schmidtmer']
  spec.files       = ['lib/payoneer.rb', 'lib/payoneer/exception.rb']
  spec.homepage    = 'https://github.com/Mehonoshin/payoneer'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end

