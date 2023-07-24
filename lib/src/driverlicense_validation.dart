// Validate generic Driver's License Number
String? validateDriversLicense(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a driver's license number";
  }

  // Regular expression to match the generic driver's license number pattern
  // The pattern ^[A-Z0-9]{6,12}$ matches a combination of uppercase letters and digits, 6 to 12 characters long
  final driversLicenseRegex = RegExp(r'^[A-Z0-9]{6,12}$');

  // Check if the input value matches the generic driver's license number pattern
  if (!driversLicenseRegex.hasMatch(value)) {
    return "Please enter a valid driver's license number";
  }

  // Driver's license number is valid, return null (no error message)
  return null;
}

// Validate Indian Driver's License Number
String? validateIndianDriverLicense(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter an Indian driver's license number";
  }

  // Regular expression to match the Indian driver's license number pattern
  // The pattern ^[A-Z0-9]{1,20}$ matches a combination of uppercase letters and digits, 1 to 20 characters long
  final indianDriverLicenseRegex = RegExp(r'^[A-Z0-9]{1,20}$');

  // Check if the input value matches the Indian driver's license number pattern
  if (!indianDriverLicenseRegex.hasMatch(value)) {
    return "Please enter a valid Indian driver's license number";
  }

  // Indian driver's license number is valid, return null (no error message)
  return null;
}

// Validate US Driver's License Number
String? validateUSDriverLicense(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a US driver's license number";
  }

  // Regular expression to match the US driver's license number pattern
  // The pattern ^[A-Za-z0-9]{1,20}$ matches a combination of uppercase and lowercase letters, and digits, 1 to 20 characters long
  final usDriverLicenseRegex = RegExp(r'^[A-Za-z0-9]{1,20}$');

  // Check if the input value matches the US driver's license number pattern
  if (!usDriverLicenseRegex.hasMatch(value)) {
    return "Please enter a valid US driver's license number";
  }

  // US driver's license number is valid, return null (no error message)
  return null;
}

// Validate UK Driver's License Number
String? validateUKDriverLicense(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a UK driver's license number";
  }

  // Regular expression to match the UK driver's license number pattern
  // The pattern ^[A-Za-z0-9]{1,16}$ matches a combination of uppercase and lowercase letters, and digits, 1 to 16 characters long
  final ukDriverLicenseRegex = RegExp(r'^[A-Za-z0-9]{1,16}$');

  // Check if the input value matches the UK driver's license number pattern
  if (!ukDriverLicenseRegex.hasMatch(value)) {
    return "Please enter a valid UK driver's license number";
  }

  // UK driver's license number is valid, return null (no error message)
  return null;
}

// Validate Canadian Driver's License Number
String? validateCanadianDriverLicense(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Canadian driver's license number";
  }

  // Regular expression to match the Canadian driver's license number pattern
  // The pattern ^[A-Za-z0-9]{1,15}$ matches a combination of uppercase and lowercase letters, and digits, 1 to 15 characters long
  final canadianDriverLicenseRegex = RegExp(r'^[A-Za-z0-9]{1,15}$');

  // Check if the input value matches the Canadian driver's license number pattern
  if (!canadianDriverLicenseRegex.hasMatch(value)) {
    return "Please enter a valid Canadian driver's license number";
  }

  // Canadian driver's license number is valid, return null (no error message)
  return null;
}

// Validate Australian Driver's License Number
String? validateAustralianDriverLicense(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter an Australian driver's license number";
  }

  // Regular expression to match the Australian driver's license number pattern
  // The pattern ^[A-Za-z0-9]{1,12}$ matches a combination of uppercase and lowercase letters, and digits, 1 to 12 characters long
  final australianDriverLicenseRegex = RegExp(r'^[A-Za-z0-9]{1,12}$');

  // Check if the input value matches the Australian driver's license number pattern
  if (!australianDriverLicenseRegex.hasMatch(value)) {
    return "Please enter a valid Australian driver's license number";
  }

  // Australian driver's license number is valid, return null (no error message)
  return null;
}
