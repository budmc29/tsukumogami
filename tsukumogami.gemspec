# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tsukumogami/version"

Gem::Specification.new do |spec|
  spec.name          = "tsukumogami"
  spec.version       = Tsukumogami::VERSION
  spec.authors       = ["budmc29"]
  spec.email         = ["chirica.mugurel@gmail.com"]

  spec.summary       = %q{Simplify the logic in controllers with light Service Objects.}
  spec.description   = %q{
    Tsukumogami is a basic Service Object implementation for Rails. It tries to keep the overhead to a minimum.
    The purpose of this gem is to reduce the complexity and amount of logic in Controllers in places where a simple PORO would not be enough.
  }
  spec.homepage      = "https://github.com/budmc29/tsukumogami"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
