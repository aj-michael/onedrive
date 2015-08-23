# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onedrive/version'

Gem::Specification.new do |spec|
  spec.name          = "onedrive"
  spec.version       = OneDrive::VERSION
  spec.authors       = ["Adam Michael"]
  spec.email         = ["adam@ajmichael.net"]

  spec.license       = 'MIT'

  spec.summary       = %q{A Ruby wrapper around the OneDrive API.}
  spec.description   = %q{Allows developers to read, write and interact with the OneDrive API.}
  spec.homepage      = "https://github.com/aj-michael/onedrive"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
