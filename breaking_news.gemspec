# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'breaking_news/version'

Gem::Specification.new do |spec|
  spec.name          = "breaking_news"
  spec.version       = BreakingNews::VERSION
  spec.date          = '2016-03-17'
  spec.summary       = "Top articles per region or topic.}"
  spec.description   = "Provides the top article from BBC based on region or topic"
  spec.authors       = ["tyleresmith"]
  spec.email         = ["oats000@hotmail.com"]
  spec.files         = ["lib/breaking_news.rb", "lib/breaking_news/cli.rb", "lib/breaking_news/article.rb", "lib/breaking_news/scraper.rb"]
  spec.homepage      = "https://github.com/tyleresmith/breaking-news-cli-gem"
  spec.license       = "MIT"
  spec.executables << "breaking-news"
  spec.require_paths = ["lib", "lib/breaking_news"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
