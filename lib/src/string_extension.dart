import 'dart:math';

//Trim Leading and Trailing Whitespace:
extension StringTrimExtension on String {
  // The extension method 'trimWhitespace' is added to the 'String' class.
  // It allows trimming leading and trailing whitespace from a string.

  // The method definition begins with the 'String' return type, indicating that
  // this method will return a modified string after trimming whitespace.
  String trimWhitespace() => trim();
// The 'trim()' method is called on the string to remove any leading and trailing whitespace.
// The trimmed string is then returned.
}

//Capitalize First Letter:
extension StringCapitalizeExtension on String {
  // The extension method 'capitalizeFirstLetter' is added to the 'String' class.
  // It capitalizes the first letter of the string.

  String capitalizeFirstLetter() {
    // The method definition begins with the 'String' return type, indicating that
    // this method will return a new string with the first letter capitalized.

    // The 'isEmpty' property is checked to handle the case of an empty string.
    return isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
    // If the string is empty, the method returns the same empty string.
    // Otherwise, it creates a new string with the first character capitalized using 'toUpperCase()',
    // and appends the rest of the original string starting from the second character using 'substring(1)'.
  }
}

//Convert to Title Case:
extension StringTitleCaseExtension on String {
  // The extension method 'toTitleCase' is added to the 'String' class.
  // It converts the string to title case, where the first letter of each word is capitalized.

  String toTitleCase() {
    // The method definition begins with the 'String' return type, indicating that
    // this method will return a new string converted to title case.

    // The 'isEmpty' property is checked to handle the case of an empty string.
    return isEmpty
        ? this
        : split(' ').map((word) => word.capitalizeFirstLetter()).join(' ');
    // If the string is empty, the method returns the same empty string.
    // Otherwise, the string is split into individual words using 'split(' ')',
    // and 'map()' is used to apply 'capitalizeFirstLetter()' on each word.
    // Finally, 'join(' ') is used to concatenate the words back into a single string with space between them.
  }
}

//Replace All Occurrences:
extension StringReplaceAllExtension on String {
  // The extension method 'replaceAllOccurrences' is added to the 'String' class.
  // It replaces all occurrences of a specified substring 'from' with another string 'to'.

  String replaceAllOccurrences(String from, String to) {
    // The method definition begins with the 'String' return type, indicating that
    // this method will return a new string with all occurrences replaced.

    return replaceAll(from, to);
    // The 'replaceAll' method is used to replace all occurrences of the substring 'from' with 'to'.
  }
}

//Check if a String Contains Only Digits:
extension StringIsDigitsExtension on String {
  // The extension method 'containsOnlyDigits' is added to the 'String' class.
  // It checks if the string contains only digits.

  bool containsOnlyDigits() {
    // The method definition begins with the 'bool' return type, indicating that
    // this method will return a boolean value (true or false).

    return isEmpty ? false : int.tryParse(this) != null;
    // If the string is empty, it is considered as not containing only digits.
    // Otherwise, 'int.tryParse()' is used to attempt parsing the string as an integer.
    // If the parsing is successful, it means the string contains only digits and returns true.
    // Otherwise, it returns false, indicating that the string contains non-digit characters.
  }
}

//Check if a String Contains Only Letters:
extension StringIsLettersExtension on String {
  // The extension method 'containsOnlyLetters' is added to the 'String' class.
  // It checks if the string contains only letters (alphabets).

  bool containsOnlyLetters() {
    // The method definition begins with the 'bool' return type, indicating that
    // this method will return a boolean value (true or false).

    return isEmpty ? false : RegExp(r'^[A-Za-z]+$').hasMatch(this);
    // If the string is empty, it is considered as not containing only letters.
    // Otherwise, 'RegExp' is used to create a regular expression pattern that matches only alphabets.
    // The 'hasMatch()' method is used to check if the entire string matches the pattern.
    // If it matches, it returns true, indicating that the string contains only letters.
    // Otherwise, it returns false, indicating that the string contains non-letter characters.
  }
}

//Reverse a String:
extension StringReverseExtension on String {
  // The extension method 'reverse' is added to the 'String' class.
  // It reverses the characters in the string and returns the reversed string.

  String reverse() {
    // The method definition begins with the 'String' return type, indicating that
    // this method will return a new string with the characters reversed.

    return split('').reversed.join();
    // The 'split' method is used to convert the string into a list of characters.
    // The 'reversed' method is used to reverse the order of the characters in the list.
    // The 'join' method is used to join the characters back into a single string.
  }
}

//Count Occurrences of a Substring:
extension StringCountOccurrencesExtension on String {
  // The extension method 'countOccurrences' is added to the 'String' class.
  // It counts the occurrences of a specified substring within the string.

  int countOccurrences(String substring) {
    // The method definition begins with the 'int' return type, indicating that
    // this method will return an integer value representing the count of occurrences.

    return isEmpty ? 0 : split(substring).length - 1;
    // If the string is empty, it returns 0 since there are no occurrences.
    // Otherwise, 'split' method is used to split the string into a list of substrings using the given 'substring'.
    // The length of the list minus 1 gives the count of occurrences of the 'substring'.
  }
}

//Check if a String is Palindrome:
extension StringIsPalindromeExtension on String {
  // The extension method 'isPalindrome' is added to the 'String' class.
  // It checks if the string is a palindrome, which means it reads the same backward as forward.

  bool isPalindrome() {
    // The method definition begins with the 'bool' return type, indicating that
    // this method will return a boolean value (true or false).

    return this == split('').reversed.join();
    // It compares the original string with the reversed version of the string.
    // If both are the same, it means the string is a palindrome, and it returns true.
    // Otherwise, it returns false, indicating that the string is not a palindrome.
  }
}

//make sensitive information masked.
extension StringExtensions on String {
  String maskSensitiveInformation() {
    if (isEmpty) {
      return '';
    }

    const int visibleChars = 4; // Number of visible characters at the end

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

//Generated Random String
extension RandomStringGenerator on String {
  static final Random _random = Random();

  static String generateRandomString(int length) {
    const String chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(_random.nextInt(chars.length))));
  }
}

// Check if an Integer is a Valid Credit Card Number:
extension IntIsCreditCardNumberExtension on int {
  bool get isCreditCardNumber {
    // The extension getter 'isCreditCardNumber' is added to the 'int' class.
    // It checks if the integer is a valid credit card number using the Luhn algorithm.

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

// Identify Type of Credit Card:
enum CreditCardType { visa, mastercard, amex, discover, other }

extension IntCreditCardTypeExtension on int {
  CreditCardType get creditCardType {
    // The extension getter 'creditCardType' is added to the 'int' class.
    // It identifies the type of credit card based on the starting digits of the credit card number.

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

// Check if an Integer is a Valid CVV Number:
extension IntIsCVVNumberExtension on int {
  bool get isCVVNumber {
    // The extension getter 'isCVVNumber' is added to the 'int' class.
    // It checks if the integer is a valid CVV (Card Verification Value) number.

    String cvvString = toString();
    // Convert the integer to a string representation.

    // CVV numbers must have a length of 3 or 4.
    // Ensure the string length is either 3 or 4 and contains only digits.
    return (cvvString.length == 3 || cvvString.length == 4) &&
        cvvString.containsOnlyDigits();
  }
}
