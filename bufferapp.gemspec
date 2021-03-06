# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bufferapp/version'

Gem::Specification.new do |spec|
  spec.name          = "bufferapp"
  spec.version       = Bufferapp::VERSION
  spec.authors       = ["Timothy Chung"]
  spec.email         = ["timchunght@gmail.com"]
  spec.licenses      = ['MIT']
  spec.summary       = %q{Buffer API Ruby gem}
  spec.description   = %q{Access Buffer API via a Ruby wrapper that abstracts all the complexity}
  spec.homepage      = "http://github.com/timchunght"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
  spec.files         = `git ls-files`.split($/) #["lib/bufferapp/update.rb", "lib/bufferapp.rb", 'lib/bufferapp/version.rb']
  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'httparty'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
