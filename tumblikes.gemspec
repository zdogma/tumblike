# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tumblikes/version'

Gem::Specification.new do |spec|
  spec.name          = "tumblikes"
  spec.version       = Tumblikes::VERSION
  spec.authors       = ["zdomga"]
  spec.email         = ["z.dogma.asaki@gmail.com"]

  spec.summary       = %q{simple library for tumblr likes}
  spec.description   = %q{You can collect likes image urls.}
  spec.homepage      = "https://github.com/zdogma/tumblikes"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "tumblr_client", "~> 0.8.5"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
