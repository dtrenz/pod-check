# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'pod-check'
  spec.version       = '0.1'
  spec.authors       = ['Dan Trenz']
  spec.email         = ['dtrenz@gmail.com']

  spec.summary       = 'Cocoapods plugin that ports the Bundler check command.'
  spec.description   = <<-DESC
    Checks if the dependencies listed in Podfile are satisfied by currently
    installed pods.
  DESC
  spec.homepage      = 'https://github.com/dtrenz/pod-check'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
end
