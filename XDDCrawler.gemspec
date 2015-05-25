# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'XDDCrawler/version'

Gem::Specification.new do |spec|
  spec.name          = "XDDCrawler"
  spec.version       = XDDCrawler::VERSION
  spec.authors       = ["Yukai Huang"]
  spec.email         = ["yukaihuang1993@hotmail.com"]
  spec.summary       = %q{a simple wrapper for nokogiri/rest-client}
  spec.description   = %q{a simple wrapper for nokogiri/rest-client, aim to make capybara like dsl}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "nokogiri", '~> 1.6', '>= 1.6.6.2'
  spec.add_dependency "rest-client", '~> 1.8', '>= 1.8.0'
end
