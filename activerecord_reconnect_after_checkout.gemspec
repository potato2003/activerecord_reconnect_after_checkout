
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activerecord_reconnect_after_checkout/version"

Gem::Specification.new do |spec|
  spec.name          = "activerecord_reconnect_after_checkout"
  spec.version       = ActiverecordReconnectAfterCheckout::VERSION
  spec.authors       = ["potato2003"]
  spec.email         = ["potato2003@gmail.com"]

  spec.summary       = "reconnect after checkout in order to DB failover"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/potato2003/activerecord_reconnect_after_checkout"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
