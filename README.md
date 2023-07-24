# string_validator_plus

Simplify data validation in Flutter apps! Validate emails, passwords, and more. Intuitive interface, accurate validation. Download now!

## Platform Support

| Platform | Support |
|----------|---------|
| Android  | &#10003; |
| iOS      | &#10003; |
| Web      | &#10003; |
| MacOS    | &#10003; |
| Linux    | &#10003; |
| Windows  | &#10003; |

## Installation

- Add it as a dependency in their `pubspec.yaml`:

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
    ```yaml
        dependencies:
          string_validator_plus: ^0.0.4
    ```

2. Import the package and use it in your Flutter App.
    ```dart
        import 'package:string_validator_plus/string_validator_plus.dart';
    ```

## Example

```
  final registrationFormKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  
  Form(
          key: loginUserFormKey,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _email,
            validator: validateEmail,
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
          ),
        ),      
            
```

- You just need to specify the type of validation you need, and you don't need to write much code.

```

  // Example of using string extensions
  String myString = "flutter toolbox+";
  String titleCaseString = myString.toTitleCase();
  
  if (kDebugMode) {
    print(titleCaseString);
  } 
  // Output: "Flutter Toolbox+"
        
```

- If you want to use an extension, you just have to add it after your string.

## Key Features

- Email Validation: Seamlessly validate email addresses to ensure correct data entry and avoid invalid inputs.

- Password Validation: Easily verify password strength and security for user authentication, enhancing data protection.

- Confirm Password Validation: Effortlessly match and confirm password entries, providing a seamless user experience.

- Different Country Documents Validation: Validate various country-specific documents, ensuring accurate data submission for legal and identity purposes.

- Mobile Number Validation: Verify and validate mobile numbers to ensure global user interaction and error-free communication.

- Driving Licence Validation: Validate driving license details for streamlined user authentication and regulatory compliance.

- Postal Code Validation: Ensure accurate data entry for location-based information with reliable postal code validation.

- Integer Validation: Effortlessly check and validate integers for numerical data accuracy, preventing invalid inputs.

- List Validation: Validate lists to manage data entries effectively, reducing errors in data processing.

## Int Handling Essentials

- Find Factorial Extension: Calculate the factorial of an integer with the "factorial" extension for the int class.

- Check Number is Odd or Even Extension: Conveniently check if an integer is odd or even using the "isEven" and "isOdd" getters for the int class.

- Check if an Integer is Prime Extension: Easily determine if an integer is a prime number with the "isPrime" getter for the int class.

- Calculate the Greatest Common Divisor (GCD) Extension: Calculate the GCD of two integers using the "gcd" method for the int class.

- Check if an Integer is a Perfect Square Extension: Check if an integer is a perfect square with the "isPerfectSquare" getter for the int class.

- Find the Least Common Multiple (LCM) Extension: Calculate the LCM of two integers using the "lcm" method for the int class.

- Generate a List of Divisors Extension: Generate a list of all divisors of an integer using the "divisors" getter for the int class.

- Check if an Integer is a Power of Two Extension: Determine if an integer is a power of two with the "isPowerOfTwo" getter for the int class.

- Convert an Integer to Hexadecimal Representation Extension: Convert an integer to its hexadecimal representation with the "toHexadecimalString" method for the int class.

- Convert an Integer to Binary Representation Extension: Convert an integer to its binary representation with the "toBinaryString" method for the int class.

- Convert an Integer to Octal Representation Extension: Convert an integer to its octal representation with the "toOctalString" method for the int class.

- Check if an Integer is a Palindrome Extension: Determine if an integer is a palindrome (reads the same backward as forward) with the "isPalindrome" getter for the int class.

- Find the Number of Digits in an Integer Extension: Calculate the number of digits in an integer with the "numberOfDigits" getter for the int class.

- Calculate the Sum of Digits of an Integer Extension: Find the sum of the digits in an integer with the "sumOfDigits" getter for the int class.

## Text Handling Extensions

- Trim Leading and Trailing Whitespace Extension: Easily trim leading and trailing whitespace from a string with the "trimWhitespace" extension for the String class.

- Capitalize First Letter Extension: Capitalize the first letter of a string effortlessly using the "capitalizeFirstLetter" extension for the String class.

- Convert to Title Case Extension: Convert a string to title case, where the first letter of each word is capitalized, with the "toTitleCase" extension for the String class.

- Replace All Occurrences Extension: Replace all occurrences of a specified substring with another string using the "replaceAllOccurrences" extension for the String class.

- Check if a String Contains Only Digits Extension: Determine if a string contains only digits with the "containsOnlyDigits" extension for the String class.

- Check if a String Contains Only Letters Extension: Check if a string contains only letters (alphabets) using the "containsOnlyLetters" extension for the String class.

- Reverse a String Extension: Effortlessly reverse the characters in a string with the "reverse" extension for the String class.

- Count Occurrences of a Substring Extension: Count the occurrences of a specified substring within a string using the "countOccurrences" extension for the String class.

- Check if a String is Palindrome Extension: Determine if a string is a palindrome (reads the same backward as forward) using the "isPalindrome" extension for the String class.

- Mask Sensitive Information Extension: Protect sensitive information like credit card numbers or passwords by masking characters with the "maskSensitiveInformation" extension for the String class.

- Generate Random Strings Extension: Create random strings of specified lengths for various use cases like token generation using the "generateRandomString" extension for the String class.

## List Utils+

- Check if a List is Empty Extension: Easily check if a list is empty with the "isEmptyList" getter for the List class.

- Remove Duplicates from a List Extension: Remove duplicate elements from a list and obtain a new list with unique elements using the "removeDuplicates" method for the List class.

- Shuffle the Elements of a List Extension: Shuffle the elements of a list randomly and get a new shuffled list using the "shuffle" method for the List class.

## Why Choose string_validator_plus?

- Comprehensive: Covering a wide range of validation types, string_validator_plus serves as an all-in-one solution for your validation needs, reducing the need for multiple packages.

- Intuitive Interface: Designed with developers in mind, it offers an easy-to-use interface for seamless integration into your Flutter projects.

- Error Reduction: Say goodbye to manual validation errors, as string_validator_plus automates the process with reliability, improving data accuracy.

- Regular Updates: We are committed to providing regular updates and improvements to ensure the package stays up-to-date with the latest Flutter trends and best practices.

There are many string functions, the extension is still listed above the description, and all introductions are not written, so please check everything after installing the package.