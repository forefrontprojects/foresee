# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "foresee/version"

Gem::Specification.new do |spec|
  spec.name          = "foresee"
  spec.version       = Foresee::VERSION
  spec.authors       = ["ootoovak"]
  spec.email         = ["ootoovak@gmail.com"]

  spec.summary       = %q{Instead of reacting try forseeing, what you want your users to see that is!}
  spec.description   = %q{A Ruby library to make simple view components.}
  spec.homepage      = "https://github.com/forefrontprojects/foresee"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
