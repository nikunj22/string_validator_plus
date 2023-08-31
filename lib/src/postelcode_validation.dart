/// Validates an Indian postal code.
///
/// Returns an error message if the postal code is invalid, null otherwise.
String? validateIndianPostalCode(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a postal code";
  }

  // Regular expression to match the postal code pattern for India
  // The pattern ^\d{6}$ matches exactly six digits for the postal code
  final indianPostalCodeRegex = RegExp(r'^\d{6}$');

  // Check if the input value matches the Indian postal code pattern
  if (!indianPostalCodeRegex.hasMatch(value)) {
    return "Invalid postal code format for India";
  }

  // Postal code is valid, return null (no error message)
  return null;
}

/// Validates a United States ZIP code.
///
/// Returns an error message if the ZIP code is invalid, null otherwise.
String? validateUSZipCode(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a ZIP code";
  }

  // Regular expression to match the ZIP code pattern for the United States
  // The pattern ^\d{5}(?:-\d{4})?$ matches either five digits or five digits followed by a hyphen and four more digits
  final usZipCodeRegex = RegExp(r'^\d{5}(?:-\d{4})?$');

  // Check if the input value matches the US ZIP code pattern
  if (!usZipCodeRegex.hasMatch(value)) {
    return "Invalid ZIP code format for the United States";
  }

  // ZIP code is valid, return null (no error message)
  return null;
}

/// Validates a Canadian postal code.
///
/// Returns an error message if the postal code is invalid, null otherwise.
String? validateCanadianPostalCode(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a postal code";
  }

  // Regular expression to match the postal code pattern for Canada
  // The pattern ^[A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d$ matches the following format:
  // - One letter (case-insensitive)
  // - One digit
  // - One letter (case-insensitive)
  // - Optional hyphen
  // - One digit
  // - One letter (case-insensitive)
  // - One digit
  final canadianPostalCodeRegex =
      RegExp(r'^[A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d$');

  // Check if the input value matches the Canadian postal code pattern
  if (!canadianPostalCodeRegex.hasMatch(value)) {
    return "Invalid postal code format for Canada";
  }

  // Postal code is valid, return null (no error message)
  return null;
}
