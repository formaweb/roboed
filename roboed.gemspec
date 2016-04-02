# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'robo_ed/version'

Gem::Specification.new do |spec|
  spec.name          = 'roboed'
  spec.version       = RoboEd::VERSION
  spec.authors       = ['Hugo Demiglio']
  spec.email         = ['hugodemiglio@gmail.com']
  spec.description   = %q{Talk with Robô Ed.}
  spec.summary       = %q{Talk with Robô Ed by Petrobras.}
  spec.homepage      = 'https://github.com/formaweb/roboed'
  spec.license       = 'MIT'

  spec.files         = `git ls-files lib`.split($/)
  spec.executables   = ['roboed']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
