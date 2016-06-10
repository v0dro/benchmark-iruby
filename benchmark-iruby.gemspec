# coding: utf-8
$:.unshift File.expand_path("../lib", __FILE__)

require 'benchmark/iruby/version.rb'

Benchmark::IRuby::DESCRIPTION = %q{Pretty printing of benchmarks in iruby notebook.}

Gem::Specification.new do |spec|
  spec.name          = 'benchmark-iruby'
  spec.version       = Benchmark::IRuby::VERSION
  spec.authors       = ['Sameer Deshmukh']
  spec.email         = ['sameer.deshmukh93@gmail.com']
  spec.summary       = %q{Pretty printing of benchmarks in iruby notebook.}
  spec.description   = Benchmark::IRuby::DESCRIPTION
  spec.homepage      = "http://github.com/v0dro/benchmark-iruby"
  spec.license       = 'BSD-3 clause'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.post_install_message = <<-EOF
benchmark-iruby is best used with the iruby notebook. Do install that before proceeding.
EOF

  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rspec-its', '~> 1.2'
end
