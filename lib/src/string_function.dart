/// Validate IMEI (International Mobile Equipment Identity) number.
String? validateIMEI(String? value) {
  // Check if the value is null or empty
  if (value == null || value.isEmpty) {
    // If value is null or empty, return an error message
    return "Please enter an IMEI number";
  }

  // Check if the value consists of exactly 15 digits
  if (!RegExp(r'^\d{15}$').hasMatch(value)) {
    // If the value does not consist of exactly 15 digits, return an error message
    return "IMEI number must be a 15-digit numeric value";
  }

  // Calculate the Luhn checksum for the IMEI
  int sum = 0;
  for (int i = 0; i < value.length; i++) {
    int digit = int.tryParse(value[i]) ??
        0; // Convert character to integer, default to 0 if not a valid digit
    if (i % 2 == 0) {
      digit *= 2;
      if (digit > 9) {
        digit -= 9;
      }
    }
    sum += digit;
  }

  // IMEI is invalid if the checksum is not divisible by 10
  if (sum % 10 != 0) {
    // If the checksum is not divisible by 10, return an error message
    return "Invalid IMEI number";
  }

  // If the IMEI is valid (checksum divisible by 10), return null (no error message)
  return null;
}

/// Validate ISBN (International Standard Book Number).
String? validateISBN(String? value) {
  // Check if the value is null or empty
  if (value == null || value.isEmpty) {
    // If value is null or empty, return an error message
    return "Please enter an ISBN";
  }

  // Remove any non-digit characters from the ISBN
  String cleanedISBN = value.replaceAll(RegExp(r'\D'), '');

  // Check if the cleaned ISBN is either 10 or 13 digits long
  if (cleanedISBN.length != 10 && cleanedISBN.length != 13) {
    // If the cleaned ISBN is not 10 or 13 digits long, return an error message
    return "Invalid ISBN format";
  }

  // Checksum validation for ISBN-10
  if (cleanedISBN.length == 10) {
    int checksum = 0;
    for (int i = 0; i < 9; i++) {
      int digit = int.tryParse(cleanedISBN[i]) ??
          0; // Convert character to integer, default to 0 if not a valid digit
      checksum += (i + 1) * digit; // Calculate checksum for each digit
    }

    int lastDigit =
        int.tryParse(cleanedISBN[9]) ?? 0; // Get the last digit of the ISBN
    if (cleanedISBN[9] == 'X') {
      lastDigit = 10; // If the last digit is 'X', treat it as 10
    }

    if ((checksum + lastDigit) % 11 != 0) {
      // If the ISBN-10 checksum is not divisible by 11, return an error message
      return "Invalid ISBN checksum";
    }
  }

  // Checksum validation for ISBN-13
  if (cleanedISBN.length == 13) {
    int checksum = 0;
    for (int i = 0; i < 12; i++) {
      int digit = int.tryParse(cleanedISBN[i]) ??
          0; // Convert character to integer, default to 0 if not a valid digit
      checksum += (i % 2 == 0)
          ? digit
          : digit *
              3; // Calculate checksum for each digit (odd-indexed digits are multiplied by 3)
    }

    int lastDigit =
        int.tryParse(cleanedISBN[12]) ?? 0; // Get the last digit of the ISBN

    // Calculate the checksum validation digit for ISBN-13
    if (checksum % 10 != 0 || (10 - (checksum % 10)) % 10 != lastDigit) {
      // If the ISBN-13 checksum is not valid, return an error message
      return "Invalid ISBN checksum";
    }
  }

  // If the ISBN is valid (checksums are valid), return null (no error message)
  return null;
}

/// Validate latitude and longitude coordinates.
String? validateLatitudeLongitude(String? latitude, String? longitude) {
  // Check if latitude or longitude is null or empty
  if (latitude == null ||
      latitude.isEmpty ||
      longitude == null ||
      longitude.isEmpty) {
    // If either latitude or longitude is null or empty, return an error message
    return "Please enter both latitude and longitude";
  }

  // Regular expressions to match the latitude and longitude patterns
  final latitudeRegex = RegExp(r'^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?)$');
  final longitudeRegex =
      RegExp(r'^[-+]?(180(\.0+)?|((1[0-7]\d)|(\d{1,2}))(\.\d+)?)$');

  // Check if the latitude and longitude strings match the expected format using the regular expressions
  if (!latitudeRegex.hasMatch(latitude) ||
      !longitudeRegex.hasMatch(longitude)) {
    // If either latitude or longitude does not match the expected format, return an error message
    return "Invalid latitude or longitude format";
  }

  // Convert latitude and longitude strings to double values
  double lat = double.tryParse(latitude) ?? 0; // If parsing fails, default to 0
  double lon =
      double.tryParse(longitude) ?? 0; // If parsing fails, default to 0

  // Check if the latitude or longitude values are out of range
  if (lat < -90 || lat > 90 || lon < -180 || lon > 180) {
    // If latitude or longitude is out of range, return an error message
    return "Latitude or longitude out of range";
  }

  // If latitude and longitude are valid (match the expected format and are within the valid range),
  // return null (no error message)
  return null;
}

/// Validate MAC (Media Access Control) address.
String? validateMACAddress(String? value) {
  // Check if the MAC address is null or empty
  if (value == null || value.isEmpty) {
    // If the MAC address is null or empty, return an error message
    return "Please enter a MAC address";
  }

  // Regular expression to match the MAC address pattern
  final macRegex = RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$');

  // Check if the MAC address matches the expected format using the regular expression
  if (!macRegex.hasMatch(value)) {
    // If the MAC address does not match the expected format, return an error message
    return "Invalid MAC address format";
  }

  // If the MAC address is valid (matches the expected format), return null (no error message)
  return null;
}

/// Validate MIME (Multipurpose Internet Mail Extensions) type.
String? validateMimeType(String? value) {
  // Check if the MIME type is null or empty
  if (value == null || value.isEmpty) {
    // If the MIME type is null or empty, return an error message
    return "Please enter a MIME type";
  }

  // Regular expression to match the MIME type pattern
  final mimeTypeRegex = RegExp(r'^[a-zA-Z]+/[a-zA-Z0-9.+*-]+$');

  // Check if the MIME type matches the expected format using the regular expression
  if (!mimeTypeRegex.hasMatch(value)) {
    // If the MIME type does not match the expected format, return an error message
    return "Invalid MIME type format";
  }

  // If the MIME type is valid (matches the expected format), return null (no error message)
  return null;
}
