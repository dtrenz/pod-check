# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pod_check/version'

Gem::Specification.new do |spec|
  spec.name          = "pod-check"
  spec.version       = PodCheck::VERSION
  spec.authors       = ["Dan Trenz"]
  spec.email         = ["dtrenz@gmail.com"]

  spec.summary       = %q{Cocoapods plugin that ports the Bundler check CLI command.}
  spec.description   = %q{Checks if the dependencies listed in Podfile are satisfied by currently installed pods.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3.0"
end
