# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_salestax"
  spec.version       = "1.2.5"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Sales Tax Lookup API - Ruby Client"
  spec.description   = "Sales Tax Lookup is a US sales tax rate API: send a ZIP or ZIP+4 code or a two-letter state code and get the current combined sales tax rate, city and state back as JSON. Paid plans add the state, county, city and special district rates that make it up, and whether the state taxes at origin or destination."
  spec.homepage      = "https://apiverve.com/marketplace/salestax?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/salestax-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/salestax"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
