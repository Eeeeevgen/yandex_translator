# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex_translator/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex_translator"
  spec.version       = YandexTranslator::VERSION
  spec.author        = "Kozlov_Evgeny"
  spec.email         = ["eeeeevgen@gmail.com"]
  spec.homepage      = 'https://github.com/Eeeeevgen/yandex_translator'
  spec.date          = '2017-05-25'
  spec.summary       = "A library for translating text using Yandex Translate API"

  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"
  spec.add_dependency "http", "~> 2.2"
  spec.add_dependency "yard", "~> 0.9.9"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.6"
  spec.add_development_dependency "webmock", "~> 3.0"
end
