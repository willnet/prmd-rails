# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prmd/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "prmd-rails"
  spec.version       = Prmd::Rails::VERSION
  spec.authors       = ["willnet"]
  spec.email         = ["netwillnet@gmail.com"]

  spec.summary       = %q{JSON Schema tools for Rails Application}
  spec.description   = %q{JSON Schema tools for Rails Application, prmd wrapper}
  spec.homepage      = "https://github.com/willnet/prmd-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_depenency "prmd", "~> 0.11.6"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
