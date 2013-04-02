# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'triggerino/version'

Gem::Specification.new do |spec|
  spec.name          = "triggerino"
  spec.version       = Triggerino::VERSION
  spec.authors       = ["Herman Moreno"]
  spec.email         = ["herman.moreno@crowdint.com"]
  spec.description   = %q{A magic black box}
  spec.summary       = %q{A magic black box}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "dino"
  spec.add_dependency "celluloid"
end
