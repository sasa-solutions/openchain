
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "open_chain/version"

Gem::Specification.new do |spec|
  spec.name          = "open_chain"
  spec.version       = Openchain::VERSION
  spec.authors       = ["renen"]
  spec.email         = ["renen@121.co.za"]

  spec.summary       = %q{Quickly build blockchain backed traceability processes.}
  spec.description   = %q{OpenChain makes it easy to participate in global supply chains via public blockchains such as IBM Food Trust, or the Walmart or Nestle based Hyperledger models. We do this by making it trivial for businesses to quickly and easily get started with publicly accessible blockchains (for example, using AWS's Quantum Ledger Database).}
  spec.homepage      = "https://github.com/sasa-solutions/openchain"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/sasa-solutions/openchain"
    spec.metadata["changelog_uri"] = "https://github.com/sasa-solutions/openchain"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
