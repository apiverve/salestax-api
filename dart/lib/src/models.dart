/// Response models for the Sales Tax Lookup API.

/// API Response wrapper.
class SalestaxResponse {
  final String status;
  final dynamic error;
  final SalestaxData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  SalestaxResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory SalestaxResponse.fromJson(Map<String, dynamic> json) => SalestaxResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? SalestaxData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Sales Tax Lookup API.

class SalestaxData {
  String? state;
  num? zip;
  String? region;
  num? rate;
  num? county;
  num? city;
  num? special;
  num? stateRate;
  String? cityName;
  String? stateName;
  String? sourcing;

  SalestaxData({
    this.state,
    this.zip,
    this.region,
    this.rate,
    this.county,
    this.city,
    this.special,
    this.stateRate,
    this.cityName,
    this.stateName,
    this.sourcing,
  });

  factory SalestaxData.fromJson(Map<String, dynamic> json) => SalestaxData(
      state: json['state'],
      zip: json['zip'],
      region: json['region'],
      rate: json['rate'],
      county: json['county'],
      city: json['city'],
      special: json['special'],
      stateRate: json['stateRate'],
      cityName: json['cityName'],
      stateName: json['stateName'],
      sourcing: json['sourcing'],
    );
}

class SalestaxRequest {
  String zip;

  SalestaxRequest({
    required this.zip,
  });

  Map<String, dynamic> toJson() => {
      'zip': zip,
    };
}
