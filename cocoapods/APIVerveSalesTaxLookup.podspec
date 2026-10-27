Pod::Spec.new do |s|
  s.name             = 'APIVerveSalesTaxLookup'
  s.version          = '1.2.3'
  s.summary          = 'Sales Tax Lookup is a US sales tax rate API: send a five-digit ZIP code or a two-letter state code and get the current combined sales...'
  s.description      = <<-'DESC'
Sales Tax Lookup is a US sales tax rate API: send a five-digit ZIP code or a two-letter state code and get the current combined sales tax rate back as JSON. The Free plan returns the state and the combined rate; paid plans add the state, county, city and special district rates that make it up.

This iOS/macOS SDK provides a convenient way to access the Sales Tax Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/salestax?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/salestax-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveSalesTaxLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
