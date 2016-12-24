# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maker_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "maker_checker"
  spec.version       = MakerChecker::VERSION
  spec.authors       = ["akil"]
  spec.email         = ["hello@quantiguous.com"]

  spec.summary       = %q{Implements the maker checker approval pattern}
  spec.homepage      = "http://quantiguous.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
