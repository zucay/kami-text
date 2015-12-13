# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kami_text/version'

Gem::Specification.new do |spec|
  spec.name          = "kami-text"
  spec.version       = KamiText::VERSION
  spec.authors       = ["yuki kawarazuka"]
  spec.email         = ["y.kawarazuka@gmail.com"]
  spec.summary       = "Better word wrapping method for japanese text"
  spec.description   = "Better word wrapping method for japanese kami-text a.k.a「ネ申テキスト」which highly-optimized for printing"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
