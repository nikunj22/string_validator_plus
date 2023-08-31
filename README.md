# **String Validator Plus**

[![Package Version](https://img.shields.io/pub/v/string_validator_plus.svg)](https://pub.dev/packages/string_validator_plus/versions)
[![GitHub Stars](https://img.shields.io/github/stars/nikunj22/string_validator_plus.svg?style=social)](https://github.com/nikunj22/string_validator_plus/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/nikunj22/string_validator_plus.svg?style=social)](https://github.com/nikunj22/string_validator_plus/forks)
[![License](https://img.shields.io/github/license/nikunj22/string_validator_plus.svg)](https://pub.dev/packages/string_validator_plus/license)

**Simplify Data Validation in Your Flutter Apps!**

Tired of complex validation logic for emails, passwords, and other data in your Flutter apps? Look no further! String Validator Plus streamlines data validation effortlessly. It offers an intuitive interface and precise validation, making your life as a developer much easier.


## **Getting Started**

- To use String Validator Plus, follow these steps:

1. Add it as a dependency in your pubspec.yaml:

```yaml
dependencies:
  string_validator_plus: ^0.0.7
```

2. Import the package into your Flutter app:

```dart
import 'package:string_validator_plus/string_validator_plus.dart';
```

## **Example**

Here's a quick example of using String Validator Plus for email validation:

```dart
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
)
```

You can achieve accurate validation with minimal code.


## **Key Features**


String Validator Plus offers a wide range of validation types to cover your needs:

- `Email Validation`: Ensure correct email addresses and prevent invalid inputs.
- `Password Validation`: Verify password strength and enhance data protection.
- `Confirm Password Validation`: Easily match and confirm password entries.
- `Country-Specific Document Validation`: Validate various country-specific documents for legal and     identity purposes.
- `Mobile Number Validation`: Ensure error-free communication with global users.
- `Driving License Validation`: Streamline user authentication and comply with regulations.
- `Postal Code Validation`: Ensure accurate location-based data entry.
- `Integer Validation`: Validate integers for numerical data accuracy.
- `List Validation`: Manage data entries effectively and reduce errors in processing.


## **Int Handling Essentials**

We've also got your integer handling needs covered:

- Calculate Factorial
- Check If a Number Is Odd or Even
- Check If an Integer Is Prime
- Calculate the Greatest Common Divisor (GCD)
- Check If an Integer Is a Perfect Square
- Find the Least Common Multiple (LCM)
- Generate a List of Divisors
- Check If an Integer Is a Power of Two
- Convert an Integer to Hexadecimal, Binary, or Octal Representation
- Check If an Integer Is a Palindrome
- Find the Number of Digits in an Integer
- Calculate the Sum of Digits of an Integer


## **Text Handling Extensions**

Manipulate text effortlessly with these extensions:

- Trim Leading and Trailing Whitespace
- Capitalize the First Letter
- Convert to Title Case
- Replace All Occurrences
- Check If a String Contains Only Digits
- Check If a String Contains Only Letters
- Reverse a String
- Count Occurrences of a Substring
- Check If a String Is a Palindrome
- Mask Sensitive Information
- Generate Random Strings

## **List Utils+**

Enhance your list handling capabilities:

- Check If a List Is Empty
- Remove Duplicates from a List
- Shuffle the Elements of a List

## **Why Choose String Validator Plus?**

- `Comprehensive`: Cover a wide range of validation types with a single package, eliminating the need for multiple dependencies.

- `Intuitive Interface`: Designed with developers in mind, it's easy to integrate into your Flutter projects.

- `Error Reduction`: Say goodbye to manual validation errors. String Validator Plus automates the process, improving data accuracy.

- `Regular Updates`: We're committed to keeping the package up-to-date with the latest Flutter trends and best practices.

- Don't miss out on the power and simplicity of String Validator Plus. Start using it in your Flutter apps today and experience the difference in data validation!