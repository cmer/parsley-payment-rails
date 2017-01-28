# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parsley-payment-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "parsley-payment-rails"
  gem.version       = ParsleyPayment::Rails::VERSION
  gem.authors       = ["Carl Mercier"]
  gem.email         = ["carl@carlmercier.com"]
  gem.description   = %q{Parsley-Payment.js bundled for Rails Asset Pipeline}
  gem.summary       = %q{Parsley-Payment.js bundled for Rails Asset Pipeline}
  gem.homepage      = "https://github.com/cmer/parsley-payment-rails"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]

  gem.add_dependency("railties", ">= 3.0.0")
end
