require_relative 'lib/rspec_creative_traveler/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_creative_traveler"
  spec.version       = RspecCreativeTraveler::VERSION
  spec.authors       = ["Wataru Kume"]
  spec.email         = ["kumewata@gmail.com"]

  spec.summary       = "In case of rspec, travel to past, make action, and come back immediately"
  spec.description   = "In case of rspec, travel to past, make action, and come back immediately"
  spec.homepage      = "https://github.com/kumewata/rspec_creative_traveler"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rspec'
  spec.add_runtime_dependency 'paper_trail'
  spec.add_development_dependency "rake", "~> 13.0"
end
