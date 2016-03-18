lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'breaking_news/version'

Gem::Specification.new do |spec|
  spec.name          = "breaking-news"
  spec.version       = BreakingNews::VERSION
  spec.date          = '2016-03-17'
  spec.summary       = "Top articles per region or topic."
  spec.description   = "Provides the top article from BBC based on region or topic"
  spec.authors       = ["tyleresmith"]
  spec.email         = ["oats000@hotmail.com"]
  spec.files         = `git ls-files`.split($\)
  spec.require_paths = ["lib", "lib/breaking_news"]
  spec.homepage      = "http://rubygems.org/gems/breaking-news"
  spec.license       = "MIT"
  spec.executables   = ["breaking-news"]


  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end

