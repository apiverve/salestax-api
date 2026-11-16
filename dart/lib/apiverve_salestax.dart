/// Sales Tax Lookup API client for Dart/Flutter
///
/// Sales Tax Lookup is a US sales tax rate API: send a ZIP or ZIP+4 code or a two-letter state code and get the current combined sales tax rate, city and state back as JSON. Paid plans add the state, county, city and special district rates that make it up, and whether the state taxes at origin or destination.
///
/// For more information, visit: https://apiverve.com/marketplace/salestax?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_salestax;

export 'src/client.dart';
export 'src/models.dart';
