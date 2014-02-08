# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lxc/extra/version'

Gem::Specification.new do |spec|
  spec.name          = "lxc-extra"
  spec.version       = LXC::Extra::VERSION
  spec.authors       = ["Ranjib Dey"]
  spec.email         = ["ranjib@linux.com"]
  spec.description   = %q{Additional helper methods for ruby lxc binding}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/ranjib/lxc-extra"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-lxc"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
