import 'dart:math';

/// Trim Leading and Trailing Whitespace
extension StringTrimExtension on String {
  /// This extension method, 'trimWhitespace', allows trimming leading and trailing whitespace from a string.
  String trimWhitespace() => trim();
// The 'trim()' method is called on the string to remove any leading and trailing whitespace.
// The trimmed string is then returned.
}

/// Capitalize First Letter
extension StringCapitalizeExtension on String {
  /// This extension method, 'capitalizeFirstLetter', capitalizes the first letter of the string.
  String capitalizeFirstLetter() {
    // If the string is empty, the method returns the same empty string.
    // Otherwise, it creates a new string with the first character capitalized using 'toUpperCase()',
    // and appends the rest of the original string starting from the second character using 'substring(1)'.
    return isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
  }
}

/// Convert to Title Case
extension StringTitleCaseExtension on String {
  /// This extension method, 'toTitleCase', converts the string to title case, where the first letter of each word is capitalized.
  String toTitleCase() {
    // If the string is empty, the method returns the same empty string.
    // Otherwise, the string is split into individual words using 'split(' ')',
    // and 'map()' is used to apply 'capitalizeFirstLetter()' on each word.
    // Finally, 'join(' ') is used to concatenate the words back into a single string with space between them.
    return isEmpty
        ? this
        : split(' ').map((word) => word.capitalizeFirstLetter()).join(' ');
  }
}

/// Replace All Occurrences
extension StringReplaceAllExtension on String {
  /// This extension method, 'replaceAllOccurrences', replaces all occurrences of a specified substring 'from' with another string 'to'.
  String replaceAllOccurrences(String from, String to) {
    // The 'replaceAll' method is used to replace all occurrences of the substring 'from' with 'to'.
    return replaceAll(from, to);
  }
}

/// Check if a String Contains Only Digits
extension StringIsDigitsExtension on String {
  /// This extension method, 'containsOnlyDigits', checks if the string contains only digits.
  bool containsOnlyDigits() {
    // If the string is empty, it is considered as not containing only digits.
    // Otherwise, 'int.tryParse()' is used to attempt parsing the string as an integer.
    // If the parsing is successful, it means the string contains only digits and returns true.
    // Otherwise, it returns false, indicating that the string contains non-digit characters.
    return isEmpty ? false : int.tryParse(this) != null;
  }
}

/// Check if a String Contains Only Letters
extension StringIsLettersExtension on String {
  /// This extension method, 'containsOnlyLetters', checks if the string contains only letters (alphabets).
  bool containsOnlyLetters() {
    // If the string is empty, it is considered as not containing only letters.
    // Otherwise, 'RegExp' is used to create a regular expression pattern that matches only alphabets.
    // The 'hasMatch()' method is used to check if the entire string matches the pattern.
    // If it matches, it returns true, indicating that the string contains only letters.
    // Otherwise, it returns false, indicating that the string contains non-letter characters.
    return isEmpty ? false : RegExp(r'^[A-Za-z]+$').hasMatch(this);
  }
}

/// Reverse a String
extension StringReverseExtension on String {
  /// This extension method, 'reverse', reverses the characters in the string and returns the reversed string.
  String reverse() {
    // The 'split' method is used to convert the string into a list of characters.
    // The 'reversed' method is used to reverse the order of the characters in the list.
    // The 'join' method is used to join the characters back into a single string.
    return split('').reversed.join();
  }
}

/// Count Occurrences of a Substring
extension StringCountOccurrencesExtension on String {
  /// This extension method, 'countOccurrences', counts the occurrences of a specified substring within the string.
  int countOccurrences(String substring) {
    // If the string is empty, it returns 0 since there are no occurrences.
    // Otherwise, 'split' method is used to split the string into a list of substrings using the given 'substring'.
    // The length of the list minus 1 gives the count of occurrences of the 'substring'.
    return isEmpty ? 0 : split(substring).length - 1;
  }
}

/// Check if a String is Palindrome
extension StringIsPalindromeExtension on String {
  /// This extension method, 'isPalindrome', checks if the string is a palindrome, which means it reads the same backward as forward.
  bool isPalindrome() {
    // It compares the original string with the reversed version of the string.
    // If both are the same, it means the string is a palindrome, and it returns true.
    // Otherwise, it returns false, indicating that the string is not a palindrome.
    return this == split('').reversed.join();
  }
}

/// Mask Sensitive Information
extension StringExtensions on String {
  /// This extension method, 'maskSensitiveInformation', masks sensitive information in the string.
  /// It keeps a specified number of visible characters at the end while masking the rest with asterisks.
  String maskSensitiveInformation() {
    if (isEmpty) {
      return '';
    }

    // Number of visible characters at the end
    const int visibleChars = 4;

    // Determine the number of characters to mask (excluding visibleChars)
    final int maskedChars = length - visibleChars;

    // If the input has less than or equal to visibleChars characters, no need to mask
    if (maskedChars <= 0) {
      return this;
    }

    // Extract the visible part of the input (last visibleChars characters)
    final visiblePart = substring(maskedChars);

    // Create the masked string with asterisks
    final maskedPart = '*' * maskedChars;

    // Combine the masked part and the visible part
    final maskedInput = maskedPart + visiblePart;

    return maskedInput;
  }
}

/// Random String Generator
extension RandomStringGenerator on String {
  static final Random _random = Random();

  /// Generates a random string of the given [length] containing alphanumeric characters.
  ///
  /// [length]: The length of the random string to generate.
  ///
  /// Returns the generated random string.
  static String generateRandomString(int length) {
    const String chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(_random.nextInt(chars.length))));
  }
}

/// Check if an Integer is a Valid Credit Card Number
extension IntIsCreditCardNumberExtension on int {
  /// Checks if the integer is a valid credit card number using the Luhn algorithm.
  bool get isCreditCardNumber {
    String numberString = toString();
    // Convert the integer to a string representation.

    // Implement the Luhn algorithm to validate the credit card number.
    int sum = 0;
    bool alternate = false;
    for (int i = numberString.length - 1; i >= 0; i--) {
      int digit = int.parse(numberString[i]);

      if (alternate) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }

      sum += digit;
      alternate = !alternate;
    }

    return sum % 10 == 0;
    // If the sum is divisible by 10, the credit card number is valid.
  }
}

/// Identify Type of Credit Card
enum CreditCardType { visa, mastercard, amex, discover, other }

extension IntCreditCardTypeExtension on int {
  /// Identifies the type of credit card based on the starting digits of the credit card number.
  CreditCardType get creditCardType {
    String numberString = toString();
    // Convert the integer to a string representation.

    if (numberString.startsWith('4')) {
      return CreditCardType.visa;
    } else if (numberString.startsWith('5')) {
      return CreditCardType.mastercard;
    } else if (numberString.startsWith('3')) {
      return CreditCardType.amex;
    } else if (numberString.startsWith('6')) {
      return CreditCardType.discover;
    } else {
      return CreditCardType.other;
    }
  }
}

/// Check if an Integer is a Valid CVV Number
extension IntIsCVVNumberExtension on int {
  /// Checks if the integer is a valid CVV (Card Verification Value) number.
  bool get isCVVNumber {
    String cvvString = toString();
    // Convert the integer to a string representation.

    // CVV numbers must have a length of 3 or 4.
    // Ensure the string length is either 3 or 4 and contains only digits.
    return (cvvString.length == 3 || cvvString.length == 4) &&
        cvvString.containsOnlyDigits();
  }
}
