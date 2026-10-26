# Sales Tax Lookup API - PHP Package

Sales Tax Lookup is a US sales tax rate API: send a five-digit ZIP code or a two-letter state code and get the current combined sales tax rate back as JSON. The Free plan returns the state and the combined rate; paid plans add the state, county, city and special district rates that make it up.

## Installation

Install via Composer:

```bash
composer require apiverve/salestax
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Salestax\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['zip' => '64082']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Salestax\Client;
use APIVerve\Salestax\Exceptions\APIException;
use APIVerve\Salestax\Exceptions\ValidationException;

try {
    $response = $client->execute(['zip' => '64082']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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
    "stateRate": 0.06
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/salestax?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/salestax?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/salestax?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
