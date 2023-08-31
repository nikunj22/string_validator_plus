/// Validates an Indian mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid Indian mobile number,
/// otherwise returns null.
String? validateIndianMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter an Indian mobile number";
  }

  // Validate the Indian mobile number format using a regular expression
  // The pattern ^\+?91?[ -]?\d{3}[ -]?\d{3}[ -]?\d{4}$ matches the following format:
  // - Optional '+' sign
  // - Country code '91' for India
  // - Optional spaces or hyphens after the country code
  // - Three digits for the network provider code
  // - Optional spaces or hyphens after the network provider code
  // - Three digits for the mobile number prefix
  // - Optional spaces or hyphens after the mobile number prefix
  // - Four digits for the mobile number suffix
  else if (!RegExp(r'^\+?91?[ -]?\d{3}[ -]?\d{3}[ -]?\d{4}$').hasMatch(value)) {
    return "Please enter a valid Indian mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates a US mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid US mobile number,
/// otherwise returns null.
String? validateUSMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a US mobile number";
  }

  // Validate the US mobile number format using a regular expression
  // The pattern ^\+?1?[-.\s]?\(?(\d{3})\)?[-.\s]?(\d{3})[-.\s]?(\d{4})$ matches the following format:
  // - Optional '+' sign
  // - Country code '1' for US
  // - Optional '.' or '-' or whitespace after the country code
  // - Optional '(' and ')' around the area code
  // - Three digits for the area code
  // - Optional '.' or '-' or whitespace after the area code
  // - Three digits for the first part of the phone number
  // - Optional '.' or '-' or whitespace after the first part of the phone number
  // - Four digits for the second part of the phone number
  else if (!RegExp(r'^\+?1?[-.\s]?\(?(\d{3})\)?[-.\s]?(\d{3})[-.\s]?(\d{4})$')
      .hasMatch(value)) {
    return "Please enter a valid US mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates a UK mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid UK mobile number,
/// otherwise returns null.
String? validateUKMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a UK mobile number";
  }

  // Validate the UK mobile number format using a regular expression
  // The pattern ^\+?44?[ -]?\d{4}[ -]?\d{6}$ matches the following format:
  // - Optional '+' sign
  // - Country code '44' for UK
  // - Optional spaces or hyphens after the country code
  // - Four digits for the area code
  // - Optional spaces or hyphens after the area code
  // - Six digits for the phone number
  else if (!RegExp(r'^\+?44?[ -]?\d{4}[ -]?\d{6}$').hasMatch(value)) {
    return "Please enter a valid UK mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates a Canadian mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid Canadian mobile number,
/// otherwise returns null.
String? validateCanadianMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Canadian mobile number";
  }

  // Validate the Canadian mobile number format using a regular expression
  // The pattern ^\+?1?[-.\s]?(\d{3})[-.\s]?(\d{3})[-.\s]?(\d{4})$ matches the following format:
  // - Optional '+' sign
  // - Country code '1' for Canada
  // - Optional '-' or '.' or whitespace after the country code
  // - Three digits for the area code
  // - Optional '-' or '.' or whitespace after the area code
  // - Three digits for the first part of the phone number
  // - Optional '-' or '.' or whitespace after the first part of the phone number
  // - Four digits for the second part of the phone number
  else if (!RegExp(r'^\+?1?[-.\s]?(\d{3})[-.\s]?(\d{3})[-.\s]?(\d{4})$')
      .hasMatch(value)) {
    return "Please enter a valid Canadian mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates an Australian mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid Australian mobile number,
/// otherwise returns null.
String? validateAustralianMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter an Australian mobile number";
  }

  // Validate the Australian mobile number format using a regular expression
  // The pattern ^\+?61?[ -]?\d{4}[ -]?\d{4}$ matches the following format:
  // - Optional '+' sign
  // - Country code '61' for Australia
  // - Optional spaces or hyphens after the country code
  // - Four digits for the area code
  // - Optional spaces or hyphens after the area code
  // - Four digits for the phone number
  else if (!RegExp(r'^\+?61?[ -]?\d{4}[ -]?\d{4}$').hasMatch(value)) {
    return "Please enter a valid Australian mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates a German mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid German mobile number,
/// otherwise returns null.
String? validateGermanMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a German mobile number";
  }

  // Validate the German mobile number format using a regular expression
  // The pattern ^\+?49?[ -]?\d{3,5}[ -]?\d{6,7}$ matches the following format:
  // - Optional '+' sign
  // - Country code '49' for Germany
  // - Optional spaces or hyphens after the country code
  // - Three to five digits for the area code
  // - Optional spaces or hyphens after the area code
  // - Six to seven digits for the phone number
  else if (!RegExp(r'^\+?49?[ -]?\d{3,5}[ -]?\d{6,7}$').hasMatch(value)) {
    return "Please enter a valid German mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates a French mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid French mobile number,
/// otherwise returns null.
String? validateFrenchMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a French mobile number";
  }

  // Validate the French mobile number format using a regular expression
  // The pattern ^\+?33?[ -]?\d{1}[ -]?\d{2}[ -]?\d{2}[ -]?\d{2}[ -]?\d{2}$ matches the following format:
  // - Optional '+' sign
  // - Country code '33' for France
  // - Optional spaces or hyphens after the country code
  // - One digit for the area code
  // - Optional spaces or hyphens after the area code
  // - Two digits for the first part of the phone number
  // - Optional spaces or hyphens after the first part of the phone number
  // - Two digits for the second part of the phone number
  // - Optional spaces or hyphens after the second part of the phone number
  // - Two digits for the third part of the phone number
  else if (!RegExp(
          r'^\+?33?[ -]?\d{1}[ -]?\d{2}[ -]?\d{2}[ -]?\d{2}[ -]?\d{2}$')
      .hasMatch(value)) {
    return "Please enter a valid French mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}

/// Validates a Brazilian mobile number.
///
/// [value] is the input string to be validated.
///
/// Returns an error message if the input is not a valid Brazilian mobile number,
/// otherwise returns null.
String? validateBrazilianMobile(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return "Please enter a Brazilian mobile number";
  }

  // Validate the Brazilian mobile number format using a regular expression
  // The pattern ^\+?55?[ -]?\d{2}[ -]?\d{5}[ -]?\d{4}$ matches the following format:
  // - Optional '+' sign
  // - Country code '55' for Brazil
  // - Optional spaces or hyphens after the country code
  // - Two digits for the area code
  // - Optional spaces or hyphens after the area code
  // - Five digits for the first part of the phone number
  // - Optional spaces or hyphens after the first part of the phone number
  // - Four digits for the second part of the phone number
  else if (!RegExp(r'^\+?55?[ -]?\d{2}[ -]?\d{5}[ -]?\d{4}$').hasMatch(value)) {
    return "Please enter a valid Brazilian mobile number";
  }

  // If the mobile number is valid, return null (no error message)
  return null;
}
