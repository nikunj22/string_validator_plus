/// Validates a GST (Goods and Services Tax) number.
///
/// Returns an error message if the input value is empty, null, not 15 characters long,
/// or does not match the GST number pattern, otherwise returns null.
String? validateGSTNumber(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return 'Please enter a GST number';
  }

  // Check if the GST number is 15 characters long
  if (value.length != 15) {
    return 'GST number should be 15 characters long';
  }

  // Regular expression to match the GST number pattern
  // The pattern ^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z][1-9A-Z]Z[0-9A-Z]$ matches the following format:
  // - Two digits
  // - Five uppercase letters
  // - Four digits
  // - One uppercase letter
  // - One digit (1 to 9) or uppercase letter (A to Z)
  // - The letter Z
  // - One digit (0 to 9) or uppercase letter (A to Z)
  final gstRegex = RegExp(r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z][1-9A-Z]Z[0-9A-Z]$');

  // Check if the input value matches the GST number pattern
  if (!gstRegex.hasMatch(value)) {
    return 'Please enter a valid GST number';
  }

  // GST number is valid, return null (no error message)
  return null;
}

/// Validates an Aadhaar card number.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the pattern for an Aadhaar card number, which should be exactly 12 digits long,
/// otherwise returns null.
String? validateAadhaarCard(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter an Aadhaar card number";
  }

  // Regular expression to match the Aadhaar card number pattern
  // The pattern ^\d{12}$ matches exactly 12 digits for the Aadhaar card number
  final aadhaarRegex = RegExp(r'^\d{12}$');

  // Check if the input value matches the Aadhaar card number pattern
  if (!aadhaarRegex.hasMatch(value)) {
    return "Please enter a valid 12-digit Aadhaar card number";
  }

  // Aadhaar card number is valid, return null (no error message)
  return null;
}

/// Validates a PAN (Permanent Account Number) card number.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the pattern for a PAN card number, which should consist of five uppercase letters,
/// followed by four digits, and ending with one uppercase letter.
String? validatePANCard(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a PAN card number";
  }

  // Regular expression to match the PAN card number pattern
  // The pattern ^[A-Z]{5}[0-9]{4}[A-Z]{1}$ matches the following format:
  // - Five uppercase letters
  // - Four digits
  // - One uppercase letter
  final panRegex = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');

  // Check if the input value matches the PAN card number pattern
  if (!panRegex.hasMatch(value)) {
    return "Please enter a valid PAN card number";
  }

  // PAN card number is valid, return null (no error message)
  return null;
}

/// Validates a passport number.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the pattern for a passport number, which should be between 6 to 9 characters long,
/// consisting of uppercase letters and/or digits.
String? validatePassportNumber(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a passport number";
  }

  // Regular expression to match the passport number pattern
  // The pattern ^[A-Z0-9]{6,9}$ matches between 6 to 9 characters (uppercase letters or digits) for the passport number
  final passportRegex = RegExp(r'^[A-Z0-9]{6,9}$');

  // Check if the input value matches the passport number pattern
  if (!passportRegex.hasMatch(value)) {
    return "Please enter a valid passport number";
  }

  // Passport number is valid, return null (no error message)
  return null;
}

/// Detects the type of a credit card based on its number.
///
/// Returns the card type (e.g., "Visa", "Mastercard") based on known card number patterns.
/// If the card type is unknown, it returns "Unknown card type".
String? detectCreditCardType(String? creditCardNumber) {
  // Check if the input value is null or empty
  if (creditCardNumber == null || creditCardNumber.isEmpty) {
    return "Please enter a credit card number";
  }

  // Remove any non-digit characters from the credit card number
  String cleanedNumber = creditCardNumber.replaceAll(RegExp(r'\D'), '');

  // Regular expressions to match patterns for different card types
  final visaRegex = RegExp(r'^4[0-9]{12}(?:[0-9]{3})?$');
  final mastercardRegex = RegExp(r'^5[1-5][0-9]{14}$');
  final amexRegex = RegExp(r'^3[47][0-9]{13}$');
  final discoverRegex = RegExp(r'^6(?:011|5[0-9]{2})[0-9]{12}$');
  final dinersClubRegex = RegExp(r'^3(?:0[0-5]|[68][0-9])[0-9]{11}$');
  final jcbRegex = RegExp(r'^(?:2131|1800|35\d{3})\d{11}$');

  // Check if the credit card number matches any of the card type patterns
  if (visaRegex.hasMatch(cleanedNumber)) {
    return "Visa";
  } else if (mastercardRegex.hasMatch(cleanedNumber)) {
    return "Mastercard";
  } else if (amexRegex.hasMatch(cleanedNumber)) {
    return "American Express";
  } else if (discoverRegex.hasMatch(cleanedNumber)) {
    return "Discover";
  } else if (dinersClubRegex.hasMatch(cleanedNumber)) {
    return "Diners Club";
  } else if (jcbRegex.hasMatch(cleanedNumber)) {
    return "JCB";
  }

  // If the credit card number doesn't match any known patterns, return "Unknown card type"
  return "Unknown card type";
}

/// Validates a Social Security Number (SSN) for the United States.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the SSN pattern for the United States, which should be in the format "XXX-XX-XXXX".
String? validateSSN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Social Security Number (SSN)";
  }

  // Regular expression to match the SSN pattern for the United States
  // The pattern ^\d{3}-\d{2}-\d{4}$ matches the following format: XXX-XX-XXXX
  // where X is a digit
  final ssnRegex = RegExp(r'^\d{3}-\d{2}-\d{4}$');

  // Check if the input value matches the SSN pattern
  if (!ssnRegex.hasMatch(value)) {
    return "Please enter a valid Social Security Number (SSN)";
  }

  // SSN is valid, return null (no error message)
  return null;
}

/// Validates a National Insurance Number (NIN) for the United Kingdom.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the NIN pattern for the United Kingdom, which should be in the format "XX-XX-XX-XX-XX".
String? validateUKNIN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a National Insurance Number (NIN)";
  }

  // Regular expression to match the NIN pattern for the United Kingdom
  // The pattern ^[A-Z]{2}-\d{2}-\d{2}-\d{2}-[A-Z]$ matches the following format: XX-XX-XX-XX-XX
  // where X is either an uppercase letter or a digit
  final ninRegex = RegExp(r'^[A-Z]{2}-\d{2}-\d{2}-\d{2}-[A-Z]$');

  // Check if the input value matches the NIN pattern
  if (!ninRegex.hasMatch(value)) {
    return "Please enter a valid National Insurance Number (NIN)";
  }

  // NIN is valid, return null (no error message)
  return null;
}

/// Validates a Social Insurance Number (SIN) for Canada.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the SIN pattern for Canada, which should be in the format "XXX-XXX-XXX".
String? validateCanadianSIN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Social Insurance Number (SIN)";
  }

  // Regular expression to match the SIN pattern for Canada
  // The pattern ^\d{3}-\d{3}-\d{3}$ matches the following format: XXX-XXX-XXX
  // where X is a digit
  final sinRegex = RegExp(r'^\d{3}-\d{3}-\d{3}$');

  // Check if the input value matches the SIN pattern
  if (!sinRegex.hasMatch(value)) {
    return "Please enter a valid Social Insurance Number (SIN)";
  }

  // SIN is valid, return null (no error message)
  return null;
}

/// Validates a Tax File Number (TFN) for Australia.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the TFN pattern for Australia, which should be in the format "XXX-XXX-XXX".
String? validateAustralianTFN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Tax File Number (TFN)";
  }

  // Regular expression to match the TFN pattern for Australia
  // The pattern ^\d{3}-\d{3}-\d{3}$ matches the following format: XXX-XXX-XXX
  // where X is a digit
  final tfnRegex = RegExp(r'^\d{3}-\d{3}-\d{3}$');

  // Check if the input value matches the TFN pattern
  if (!tfnRegex.hasMatch(value)) {
    return "Please enter a valid Tax File Number (TFN)";
  }

  // TFN is valid, return null (no error message)
  return null;
}

/// Validates a National Identification Number (NIN) for Nigeria.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the NIN pattern for Nigeria, which should be in the format "XXX-XXX-XXX".
String? validateNigerianNIN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a National Identification Number (NIN)";
  }

  // Regular expression to match the NIN pattern for Nigeria
  // The pattern ^\d{3}-\d{3}-\d{3}$ matches the following format: XXX-XXX-XXX
  // where X is a digit
  final ninRegex = RegExp(r'^\d{3}-\d{3}-\d{3}$');

  // Check if the input value matches the NIN pattern
  if (!ninRegex.hasMatch(value)) {
    return "Please enter a valid National Identification Number (NIN)";
  }

  // NIN is valid, return null (no error message)
  return null;
}

/// Validates an Identity Card Number (IC) for Malaysia.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the IC pattern for Malaysia, which should be in the format "XXXXXX-XX-XXXX".
String? validateMalaysianIC(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter an Identity Card Number (IC)";
  }

  // Regular expression to match the IC pattern for Malaysia
  // The pattern ^\d{6,7}-\d{2}-\d{4}$ matches the following format: XXXXXX-XX-XXXX
  // where X is a digit
  final icRegex = RegExp(r'^\d{6,7}-\d{2}-\d{4}$');

  // Check if the input value matches the IC pattern
  if (!icRegex.hasMatch(value)) {
    return "Please enter a valid Identity Card Number (IC)";
  }

  // IC is valid, return null (no error message)
  return null;
}

/// Validates a Personal Identification Number (PIN) for South Africa.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the PIN pattern for South Africa, which should be a 6-digit PIN number.
String? validateSouthAfricanPIN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Personal Identification Number (PIN)";
  }

  // Regular expression to match the PIN pattern for South Africa
  // The pattern ^\d{6}$ matches a 6-digit PIN number
  final pinRegex = RegExp(r'^\d{6}$');

  // Check if the input value matches the PIN pattern
  if (!pinRegex.hasMatch(value)) {
    return "Please enter a valid Personal Identification Number (PIN)";
  }

  // PIN is valid, return null (no error message)
  return null;
}

/// Validates a National Identification Number (NID) for Bangladesh.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the NID pattern for Bangladesh, which should be a 13-digit NID number.
String? validateBangladeshiNID(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a National Identification Number (NID)";
  }

  // Regular expression to match the NID pattern for Bangladesh
  // The pattern ^\d{13}$ matches a 13-digit NID number
  final nidRegex = RegExp(r'^\d{13}$');

  // Check if the input value matches the NID pattern
  if (!nidRegex.hasMatch(value)) {
    return "Please enter a valid National Identification Number (NID)";
  }

  // NID is valid, return null (no error message)
  return null;
}

/// Validates a Spanish Social Security Number (NSSN) for Spain.
///
/// Returns an error message if the input value is empty, null, or does not match
/// the NSSN pattern for Spain, which should be a 12-digit NSSN number.
String? validateSpanishNSSN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Social Security Number (NSSN)";
  }

  // Regular expression to match the NSSN pattern for Spain
  // The pattern ^\d{12}$ matches a 12-digit NSSN number
  final nssnRegex = RegExp(r'^\d{12}$');

  // Check if the input value matches the NSSN pattern
  if (!nssnRegex.hasMatch(value)) {
    return "Please enter a valid Spanish Social Security Number (NSSN)";
  }

  // NSSN is valid, return null (no error message)
  return null;
}

/// Validates a Swedish Personal Number (PN).
///
/// Returns an error message if the input value is empty, null, or does not match
/// the PN pattern for Sweden, which should be either 10 digits or 10 digits followed
/// by a hyphen or plus sign and 4 digits (e.g., XXXXXXXXXX or XXXXXXXXX-XXXX or XXXXXXXXX+XXXX).
String? validateSwedishPN(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Personal Number (PN)";
  }

  // Regular expression to match the PN pattern for Sweden
  // The pattern ^\d{10}[-+]?\d{4}$ matches the following formats:
  // XXXXXXXXXX or XXXXXXXXX-XXXX or XXXXXXXXX+XXXX
  // where X is a digit
  final pnRegex = RegExp(r'^\d{10}[-+]?\d{4}$');

  // Check if the input value matches the PN pattern
  if (!pnRegex.hasMatch(value)) {
    return "Please enter a valid Swedish Personal Number (PN)";
  }

  // PN is valid, return null (no error message)
  return null;
}

/// Masks sensitive information in a string by replacing most characters with asterisks,
/// leaving only the last [visibleChars] characters unmasked.
///
/// For example, if [input] is "1234567890" and [visibleChars] is 4, the returned
/// string will be "******7890".
String maskSensitiveInformation(String input, {int visibleChars = 4}) {
  if (input.isEmpty) {
    return '';
  }

  // Determine the number of characters to mask (excluding visibleChars)
  final maskedChars = input.length - visibleChars;

  // If the input has less than or equal to visibleChars characters, no need to mask
  if (maskedChars <= 0) {
    return input;
  }

  // Extract the visible part of the input (last visibleChars characters)
  final visiblePart = input.substring(maskedChars);

  // Create the masked string with asterisks
  final maskedPart = '*' * maskedChars;

  // Combine the masked part and the visible part
  final maskedInput = maskedPart + visiblePart;

  return maskedInput;
}
