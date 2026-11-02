# Sales Tax Lookup API - Ruby Gem

Sales Tax Lookup is a US sales tax rate API: send a ZIP or ZIP+4 code or a two-letter state code and get the current combined sales tax rate, city and state back as JSON. Paid plans add the state, county, city and special district rates that make it up, and whether the state taxes at origin or destination.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_salestax'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_salestax
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_salestax'

# Initialize the client
client = APIVerve::Salestax::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ zip: "64082" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ zip: "64082" })
  puts response["data"]
rescue APIVerve::Salestax::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Salestax::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Salestax::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "state": "CA",
    "zip": 90210,
    "region": "WEST HOLLYWOOD TOURISM IMPROVEMENT DISTRICT",
    "rate": 0.1025,
    "county": 0.0025,
    "city": 0.0075,
    "special": 0.0325,
    "stateRate": 0.06,
    "cityName": "Beverly Hills",
    "stateName": "California",
    "sourcing": "mixed"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/salestax?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/salestax?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/salestax?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
