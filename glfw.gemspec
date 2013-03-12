# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glfw/version'

Gem::Specification.new do |gem|
  gem.name          = "glfw"
  gem.version       = GLFW::VERSION
  gem.authors       = ["Andreas Alin"]
  gem.email         = ["andreas.alin@gmail.com"]
  gem.description   = %q{GLFW wrapper and DSL using FFI.}
  gem.summary       = %q{GLFW wrapper and DSL using FFI.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "ffi"
  gem.add_runtime_dependency "rake"
end
