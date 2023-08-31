import 'dart:convert';

/// Function to check if the given email is in a valid format.
bool isValidateEmail(String email) {
  // Regular expression pattern to validate the email format.
  // The pattern checks for the following format:
  // 1. The local part (before the @ symbol) can contain word characters (\w) and hyphens (-).
  // 2. The local part can also contain periods (.) but not consecutively (hence, (\.[\w-]+)*).
  // 3. The domain part (after the @ symbol) can contain alphanumeric characters and hyphens.
  // 4. The domain part can also contain periods but not consecutively (hence, (\.[a-zA-Z0-9-]+)*).
  // 5. The domain part should end with at least two alphabets (hence, (\.[a-zA-Z]{2,})).
  const pattern =
      r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';

  // Create a RegExp object with the defined pattern
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the email matches the pattern
  return regex.hasMatch(email);
}

/// Function to check if the given password is in a valid format.
bool isValidatePassword(String password) {
  // Regular expression pattern to validate the password format.
  // The pattern checks for the following requirements:
  // 1. At least one lowercase letter (hence, (?=.*[a-z])).
  // 2. At least one uppercase letter (hence, (?=.*[A-Z])).
  // 3. At least one digit (hence, (?=.*\d)).
  // 4. At least one special character (non-alphanumeric) (hence, (?=.*[\W_])).
  // 5. The password can contain alphanumeric characters and special characters (hence, [A-Za-z\d\W_]).
  // 6. The password must be at least 8 characters long (hence, {8,}).
  const pattern =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$';

  // Create a RegExp object with the defined pattern
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the password matches the pattern
  return regex.hasMatch(password);
}

/// Function to check if the given phone number is in a valid format.
bool isValidatePhoneNumber(String phoneNumber) {
  // Regular expression pattern to validate the phone number format.
  // The pattern checks for the following requirements:
  // 1. The phone number may start with an optional "+" symbol (hence, ^\+?).
  // 2. The phone number must start with a digit from 1 to 9 (hence, [1-9]).
  // 3. The phone number can be followed by 1 to 14 additional digits (hence, \d{1,14}).
  const pattern = r'^\+?[1-9]\d{1,14}$';

  // Create a RegExp object with the defined pattern
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the phone number matches the pattern
  return regex.hasMatch(phoneNumber);
}

/// Function to check if the given phone number is a valid Indian mobile number.
bool isValidateIndianPhoneNumber(String? phoneNumber) {
  // If the phoneNumber is null, return false indicating invalid input.
  if (phoneNumber == null) return false;

  // Remove any non-digit characters from the phone number using regex.
  phoneNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

  // Check if the phone number is exactly 10 digits.
  // If the length is not 10, return false indicating an invalid phone number.
  if (phoneNumber.length != 10) return false;

  // Check if the phone number starts with a valid Indian mobile number prefix.
  List<String> validPrefixes = ['9', '8', '7', '6', '5'];
  if (!validPrefixes.contains(phoneNumber[0])) return false;

  // If all checks pass, return true indicating a valid Indian mobile number.
  return true;
}

/// Function to check if the given number is a positive number (including decimals).
bool isValidatePositiveNumber(String number) {
  // Regular expression pattern to validate positive numbers (including decimals).
  // The pattern checks for the following:
  // 1. The number may start with one or more digits (hence, ^\d+).
  // 2. The number may have an optional decimal part, starting with a "." (hence, (\.\d+)?).
  const pattern = r'^\d+(\.\d+)?$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the number matches the pattern.
  return regex.hasMatch(number);
}

/// Function to check if the given string is a valid hexadecimal color code.
bool isValidateHexColor(String colorCode) {
  // Regular expression pattern to validate hexadecimal color codes.
  // The pattern checks for the following:
  // 1. The color code may start with an optional "#" symbol (hence, ^#?).
  // 2. The color code must be either 3 or 6 characters long (hence, [0-9a-fA-F]{3}|[0-9a-fA-F]{6}).
  const pattern = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the color code matches the pattern.
  return regex.hasMatch(colorCode);
}

/// Function to check if the given string is a valid date in the specified format.
bool isValidateDateFormat(String date, {String format = 'yyyy-MM-dd'}) {
  try {
    // Use the DateTime.parse method to parse the input date string.
    // If the parsing is successful, it means the input date is in the correct format.
    DateTime.parse(date);
    return true;
  } catch (e) {
    // If parsing fails (e.g., due to an invalid format or invalid date), catch the exception and return false.
    return false;
  }
}

/// Function to check if the given string is a valid credit card number.
bool isValidateCreditCard(String cardNumber) {
  // Regular expression pattern to validate credit card numbers.
  // The pattern checks for the following:
  // 1. The credit card number must consist of 12 to 19 digits (hence, ^\d{12,19}$).
  const pattern = r'^\d{12,19}$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the card number matches the pattern.
  return regex.hasMatch(cardNumber);
}

/// Function to check if the given string is a valid US postal code.
bool isValidateUSPostalCode(String postalCode) {
  // Regular expression pattern to validate US postal codes.
  // The pattern checks for the following:
  // 1. The postal code must consist of 5 digits (hence, ^\d{5}).
  // 2. The postal code may have an optional 4-digit extension after a hyphen (hence, (-\d{4})?).
  const pattern = r'^\d{5}(-\d{4})?$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the postal code matches the pattern.
  return regex.hasMatch(postalCode);
}

/// Function to check if the given string is a valid credit card expiry date.
bool isValidateCreditCardExpiry(String expiryDate) {
  // Regular expression pattern to validate credit card expiry dates.
  // The pattern checks for the following:
  // 1. The expiry date must have two digits for the month (hence, 0[1-9]|1[0-2]).
  // 2. The month and year must be separated by a slash (hence, \/).
  // 3. The expiry date must have two digits for the year (hence, [0-9]{2}).
  const pattern = r'^(0[1-9]|1[0-2])\/?([0-9]{2})$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the expiry date matches the pattern.
  return regex.hasMatch(expiryDate);
}

/// Function to check if the given string is a valid IP address (IPv4).
bool isValidateIPAddress(String ipAddress) {
  // Regular expression pattern to validate IP addresses (IPv4).
  // The pattern checks for the following:
  // 1. Each segment of the IP address (separated by dots) must be a number between 0 and 255.
  // 2. The segments must be separated by dots.
  // 3. The entire IP address must match the pattern (hence, ^ at the beginning and $ at the end).
  const pattern = r'^([01]?\d\d?|2[0-4]\d|25[0-5])\.'
      r'([01]?\d\d?|2[0-4]\d|25[0-5])\.'
      r'([01]?\d\d?|2[0-4]\d|25[0-5])\.'
      r'([01]?\d\d?|2[0-4]\d|25[0-5])$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the IP address matches the pattern.
  return regex.hasMatch(ipAddress);
}

/// Function to check if the given string is a valid username.
bool isValidateUsername(String username) {
  // Regular expression pattern to validate usernames.
  // The pattern checks for the following:
  // 1. The username may contain letters (uppercase and lowercase), digits, and underscores.
  // 2. The username must not contain any other special characters or spaces.
  const pattern = r'^[a-zA-Z0-9_]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the username matches the pattern.
  return regex.hasMatch(username);
}

/// Function to check if the given string is a valid credit card CVV (Card Verification Value).
bool isValidateCreditCardCVV(String cvv) {
  // Regular expression pattern to validate credit card CVV.
  // The pattern checks for the following:
  // 1. The CVV must consist of 3 or 4 digits (hence, ^\d{3,4}$).
  const pattern = r'^\d{3,4}$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the CVV matches the pattern.
  return regex.hasMatch(cvv);
}

/// Function to check if the given string is a valid numeric value (integer or decimal).
bool isValidateNumeric(String input) {
  // Regular expression pattern to validate numeric values.
  // The pattern checks for the following:
  // 1. The input can be an integer or a decimal number.
  // 2. The input may have an optional minus sign at the beginning (hence, ^-?).
  // 3. The input must consist of digits (integer part) and an optional decimal point followed by digits (decimal part).
  const pattern = r'^-?(\d+|\d+\.\d+)$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the input matches the pattern.
  return regex.hasMatch(input);
}

/// Function to check if the given string is a Fully Qualified Domain Name (FQDN).
bool isFQDN(String str) {
  // Regular expression pattern to validate FQDN.
  // The pattern checks for the following:
  // 1. The FQDN should contain alphanumeric characters and hyphens (-) only before the domain name.
  // 2. The domain name must have at least two parts (e.g., example.com) and should consist of letters only.
  const pattern = r'^[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string matches the FQDN pattern.
  return regex.hasMatch(str);
}

/// Function to check if the given string is a valid IP address (IPv4 or IPv6).
bool isIP(String str, {int? version}) {
  // Regular expression patterns to validate IPv4 and IPv6 addresses.
  const ipv4Pattern = r'^(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})$';
  const ipv6Pattern = r'^([0-9a-fA-F]{1,4}:){7}([0-9a-fA-F]{1,4})$';

  // Create RegExp objects with the defined patterns.
  final ipv4Regex = RegExp(ipv4Pattern);
  final ipv6Regex = RegExp(ipv6Pattern);

  // Check the IP address version specified by the 'version' parameter.
  if (version == 4) {
    return ipv4Regex
        .hasMatch(str); // Check if the IP address matches the IPv4 pattern.
  } else if (version == 6) {
    return ipv6Regex
        .hasMatch(str); // Check if the IP address matches the IPv6 pattern.
  } else {
    // If 'version' is not specified or invalid, check for both IPv4 and IPv6 patterns.
    return ipv4Regex.hasMatch(str) || ipv6Regex.hasMatch(str);
  }
}

/// Function to check if the given string contains only alphabetic characters (letters).
bool isAlpha(String str) {
  // Regular expression pattern to validate alphabetic characters.
  // The pattern allows both uppercase and lowercase letters.
  const pattern = r'^[a-zA-Z]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string contains only alphabetic characters.
  return regex.hasMatch(str);
}

/// Function to check if the given string contains only numeric characters.
bool isNumeric(String str) {
  // Regular expression pattern to validate numeric characters.
  const pattern = r'^[0-9]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string contains only numeric characters.
  return regex.hasMatch(str);
}

/// Function to check if the given string contains only alphanumeric characters.
bool isAlphanumeric(String str) {
  // Regular expression pattern to validate alphanumeric characters.
  // The pattern allows both uppercase and lowercase letters and digits.
  const pattern = r'^[a-zA-Z0-9]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string contains only alphanumeric characters.
  return regex.hasMatch(str);
}

/// Function to check if the given string is a valid Base64-encoded string.
bool isBase64(String str) {
  // Regular expression pattern to validate Base64-encoded strings.
  // The pattern allows valid Base64 characters with optional padding characters.
  const pattern =
      r'^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string is a valid Base64-encoded string.
  return regex.hasMatch(str);
}

/// Function to check if the given string contains only hexadecimal characters (0-9, A-F, a-f).
bool isHexadecimal(String str) {
  // Regular expression pattern to validate hexadecimal characters.
  // The pattern allows both uppercase and lowercase hexadecimal characters.
  const pattern = r'^[a-fA-F0-9]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string contains only hexadecimal characters.
  return regex.hasMatch(str);
}

/// Function to check if the given string is a valid hexadecimal color representation.
bool isHexColor(String str) {
  // Regular expression pattern to validate hexadecimal color representations.
  // The pattern allows both 3-digit and 6-digit hexadecimal color codes, with or without the '#' symbol.
  const pattern = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string is a valid hexadecimal color representation.
  return regex.hasMatch(str);
}

/// Function to check if the given string contains only lowercase alphabetic characters.
bool isLowercase(String str) {
  // Regular expression pattern to validate lowercase alphabetic characters.
  const pattern = r'^[a-z]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string contains only lowercase alphabetic characters.
  return regex.hasMatch(str);
}

/// Function to check if the given string contains only uppercase alphabetic characters.
bool isUppercase(String str) {
  // Regular expression pattern to validate uppercase alphabetic characters.
  const pattern = r'^[A-Z]+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string contains only uppercase alphabetic characters.
  return regex.hasMatch(str);
}

/// Function to check if the given string represents an integer number.
bool isInt(String str) {
  // Regular expression pattern to validate integer numbers.
  // The pattern allows an optional negative sign followed by one or more digits.
  const pattern = r'^-?\d+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string represents an integer number.
  return regex.hasMatch(str);
}

/// Function to check if the given string represents a floating-point number.
bool isFloat(String str) {
  // Regular expression pattern to validate floating-point numbers.
  // The pattern allows an optional negative sign followed by one or more digits,
  // and an optional decimal point with one or more digits.
  const pattern = r'^-?\d+(\.\d+)?$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Use the RegExp object to check if the string represents a floating-point number.
  return regex.hasMatch(str);
}

/// Function to check if the given string is divisible by the specified number.
bool isDivisibleBy(String str, int number) {
  // Regular expression pattern to validate integer numbers.
  const pattern = r'^-?\d+$';

  // Create a RegExp object with the defined pattern.
  final regex = RegExp(pattern);

  // Check if the string represents an integer number using the RegExp object.
  if (!regex.hasMatch(str)) return false;

  // Convert the string to an integer and check if it is divisible by the specified number.
  return int.parse(str) % number == 0;
}

/// Function to check if the given GST number is valid.
bool isGSTNumberValid(String gstNumber) {
  // GST number should be 15 characters long
  if (gstNumber.length != 15) {
    return false;
  }

  // Check if the first two characters are alphabets
  if (!isAlpha(gstNumber.substring(0, 2))) {
    return false;
  }

  // Check if the next ten characters are digits
  if (!isNumeric(gstNumber.substring(2, 12))) {
    return false;
  }

  // Check if the 13th character is an alphabet
  if (!isAlpha(gstNumber.substring(12, 13))) {
    return false;
  }

  // Check if the last two characters are digits
  if (!isNumeric(gstNumber.substring(13, 15))) {
    return false;
  }

  return true;
}

/// Function to check if the given string is a valid URL.
bool isURL(String? str,
    {List<String?> protocols = const ['http', 'https', 'ftp'],
    bool requireTld = true,
    bool requireProtocol = false,
    bool allowUnderscore = false,
    List<String> hostWhitelist = const [],
    List<String> hostBlacklist = const []}) {
  // Check if the input string is null or empty, and return false if so.
  if (str == null || str.isEmpty) {
    return false;
  }

  // Regular expression pattern to validate URLs based on the specified protocols.
  final RegExp urlPattern = RegExp(
    // Protocol part of the URL pattern.
    r"^(?:(?:${protocols.join('|')}):\/\/)"
    // Optional username and password part of the URL pattern.
    r"(?:\S+(?::\S*)?@)?"
    // IP address part of the URL pattern with IP address exclusions.
    r"(?:(?!10(?:\.\d{1,3}){3})"
    r"(?!127(?:\.\d{1,3}){3})"
    r"(?!169\.254(?:\.\d{1,3}){2})"
    r"(?!192\.168(?:\.\d{1,3}){2})"
    r"(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})"
    r"(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])"
    r"(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}"
    r"(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))"
    // Hostname part of the URL pattern (domain names and IP addresses).
    r"|(?:[a-zA-Z0-9\u00a1-\uffff][a-zA-Z0-9\u00a1-\uffff_-]{0,62})"
    r"?(?:\.(?:[a-zA-Z0-9\u00a1-\uffff][a-zA-Z0-9\u00a1-\uffff_-]{0,62}))*)"
    // Port part of the URL pattern (optional).
    r"(?::\d{2,5})?"
    // Path part of the URL pattern (optional).
    r"(?:\/[^\s]*)?",
    caseSensitive: false,
    multiLine: false,
  );

  // Check if the input string matches the URL pattern using the RegExp object.
  if (!urlPattern.hasMatch(str)) {
    return false;
  }

  // Check if the URL has a valid top-level domain (TLD) if required.
  if (requireTld) {
    final List<String> parts = str.split('.');
    if (parts.length < 2) {
      return false;
    }
    final String lastPart = parts.last;
    if (lastPart.length < 2 || lastPart.length > 63) {
      return false;
    }
  }

  // Check if the URL has a valid protocol if required.
  if (requireProtocol) {
    final String protocol = str.split('://').first.toLowerCase();
    if (!protocols.contains(protocol)) {
      return false;
    }
  }

  // Check if the URL contains an underscore if not allowed.
  if (!allowUnderscore && str.contains('_')) {
    return false;
  }

  // Check if the URL's host is in the whitelist if provided.
  if (hostWhitelist.isNotEmpty) {
    final Uri? uri = Uri.tryParse(str);
    if (uri == null || !hostWhitelist.contains(uri.host)) {
      return false;
    }
  }

  // Check if the URL's host is not in the blacklist if provided.
  if (hostBlacklist.isNotEmpty) {
    final Uri? uri = Uri.tryParse(str);
    if (uri != null && hostBlacklist.contains(uri.host)) {
      return false;
    }
  }

  return true;
}

/// Function to check if the given string is a valid UUID (Universally Unique Identifier).
bool isUUID(String? str, [dynamic version]) {
  final pattern = RegExp(
    // Regular expression pattern to validate UUIDs based on the specified version.
    r'^[0-9a-f]{8}-[0-9a-f]{4}-[${version == 3 ? "3" : version == 4 ? "4" : version == 5 ? "5" : ""}][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$',
    caseSensitive: false,
  );
  // Check if the input string matches the UUID pattern using the RegExp object.
  return pattern.hasMatch(str ?? '');
}

/// Function to check if the given string is a valid JSON string.
bool isJson(String str) {
  try {
    // Attempt to decode the input string as JSON using `json.decode`.
    json.decode(str);
  } catch (e) {
    // If an exception occurs, it means the input string is not a valid JSON.
    return false;
  }
  // If decoding is successful, the input string is a valid JSON.
  return true;
}

/// Function to check if the given string contains only ASCII characters.
bool isAscii(String str) {
  final ascii = RegExp(r'^[\x00-\x7F]+$');
  // Check if the input string matches the ASCII pattern using the RegExp object.
  return ascii.hasMatch(str);
}

/// Function to check if the given string is equal to the provided comparison object.
bool equals(String str, Object? comparison) {
  // Convert the comparison object to a string using `toString()`.
  // Then, compare the resulting string with the input string `str`.
  // If they are equal, the function returns true; otherwise, it returns false.
  return str == comparison.toString();
}

/// Function to check if the given string contains the specified substring.
bool contains(String str, String substring) {
  // Use the `contains` method of the string class to check if `str` contains `substring`.
  // The function returns true if the substring is found, otherwise, it returns false.
  return str.contains(substring);
}

/// Function to check if the given string matches the specified pattern using regular expressions.
bool matches(String str, String pattern) {
  // Create a `RegExp` object with the provided pattern.
  RegExp re = RegExp(pattern);
  // Use the `hasMatch` method of the `RegExp` object to check if the pattern matches the input string `str`.
  // If the pattern is found in the string, the function returns true; otherwise, it returns false.
  return re.hasMatch(str);
}

/// Function to check if the given value is a valid International Mobile Equipment Identity (IMEI) number.
bool isValidIMEI(String value) {
  // Check if the value is null or empty, in which case it is not a valid IMEI.
  if (value.isEmpty) {
    return false;
  }

  // Check if the value consists of exactly 15 digits using a regular expression.
  if (!RegExp(r'^\d{15}$').hasMatch(value)) {
    return false;
  }

  // Calculate the Luhn checksum for the IMEI.
  // The Luhn algorithm is used to validate various identification numbers, including IMEI.
  int sum = 0;
  for (int i = 0; i < value.length; i++) {
    int digit = int.parse(value[i]);
    if (i % 2 == 0) {
      digit *= 2;
      if (digit > 9) {
        digit -= 9;
      }
    }
    sum += digit;
  }

  // An IMEI is considered valid if the checksum is divisible by 10.
  return sum % 10 == 0;
}

/// Function to check if the given value is a valid Media Access Control (MAC) address.
bool isValidMACAddress(String value) {
  // Check if the value is null or empty, in which case it is not a valid MAC address.
  if (value.isEmpty) {
    return false;
  }

  // Regular expression to match the MAC address pattern.
  final macRegex = RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$');

  // Check if the value matches the MAC address pattern using the regular expression.
  return macRegex.hasMatch(value);
}

/// Function to check if the given value is a valid Multipurpose Internet Mail Extensions (MIME) type.
bool isValidMimeType(String value) {
  // Check if the value is null or empty, in which case it is not a valid MIME type.
  if (value.isEmpty) {
    return false;
  }

  // Regular expression to match the MIME type pattern.
  final mimeTypeRegex = RegExp(r'^[a-zA-Z]+/[a-zA-Z0-9.+*-]+$');

  // Check if the value matches the MIME type pattern using the regular expression.
  return mimeTypeRegex.hasMatch(value);
}
