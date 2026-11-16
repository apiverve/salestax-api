# Sales Tax Lookup API - Dart/Flutter Client

Sales Tax Lookup is a US sales tax rate API: send a ZIP or ZIP+4 code or a two-letter state code and get the current combined sales tax rate, city and state back as JSON. Paid plans add the state, county, city and special district rates that make it up, and whether the state taxes at origin or destination.

[![pub package](https://img.shields.io/pub/v/apiverve_salestax.svg)](https://pub.dev/packages/apiverve_salestax)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Sales Tax Lookup API](https://apiverve.com/marketplace/salestax?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_salestax: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_salestax/apiverve_salestax.dart';

void main() async {
  final client = SalestaxClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'zip': '64082'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Sales Tax Lookup API](https://apiverve.com/marketplace/salestax?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/salestax](https://docs.apiverve.com/ref/salestax?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
