import 'package:flutter/foundation.dart';
import 'package:string_validator_plus/string_validator_plus.dart';

void main() {
  // Example of using string extensions
  String myString = "flutter toolbox+";
  String titleCaseString = myString.toTitleCase();
  if (kDebugMode) {
    debugPrint(titleCaseString);
  } // Output: "Flutter Toolbox+"

  String? email = "test@example";
  String? password = "password";
  String? confirmPassword = "password123";

  String? emailErrorMessage = validateEmail(email);
  String? passwordErrorMessage = validatePassword(password);
  String? confirmPasswordErrorMessage =
      validateConfirmPassword(password, confirmPassword);

  if (emailErrorMessage != null) {
    debugPrint(emailErrorMessage); // Output: "Enter correct email"
  }

  if (passwordErrorMessage != null) {
    debugPrint(
        passwordErrorMessage); // Output: "Password must contain at least 8 characters, including uppercase, lowercase, digits, and special characters."
  }

  if (confirmPasswordErrorMessage != null) {
    debugPrint(confirmPasswordErrorMessage); // Output: "Passwords do not match"
  }

  // Example of using mobile number validation functions
  String indianNumber = "+91 9876543210";
  String usNumber = "+1 (123) 456-7890";
  String ukNumber = "+44 7412 345678";

  // Validate Indian Mobile Number
  String? indianValidationResult = validateIndianMobile(indianNumber);
  debugPrint('Indian Number Validation: $indianValidationResult');
  // Output: Indian Number Validation: null (No error message, since the number is valid)

  // Validate US Mobile Number
  String? usValidationResult = validateUSMobile(usNumber);
  debugPrint('US Number Validation: $usValidationResult');
  // Output: US Number Validation: null (No error message, since the number is valid)

  // Validate UK Mobile Number
  String? ukValidationResult = validateUKMobile(ukNumber);
  debugPrint('UK Number Validation: $ukValidationResult');
  // Output: UK Number Validation: null (No error message, since the number is valid)

  // Example of using driver's license number validation functions
  String genericLicense = "AB1234";
  String indianLicense = "KA1234567890123456";
  String usLicense = "ABC123";
  String ukLicense = "AB12CD34";

  // Validate Generic Driver's License Number
  String? genericValidationResult = validateDriversLicense(genericLicense);
  debugPrint('Generic Driver\'s License Validation: $genericValidationResult');
  // Output: Generic Driver's License Validation: null (No error message, since the number is valid)

  // Validate Indian Driver's License Number
  String? indianValidationResult1 = validateIndianDriverLicense(indianLicense);
  debugPrint('Indian Driver\'s License Validation: $indianValidationResult1');
  // Output: Indian Driver's License Validation: null (No error message, since the number is valid)

  // Validate US Driver's License Number
  String? usValidationResult2 = validateUSDriverLicense(usLicense);
  debugPrint('US Driver\'s License Validation: $usValidationResult2');
  // Output: US Driver's License Validation: null (No error message, since the number is valid)

  // Validate UK Driver's License Number
  String? ukValidationResult3 = validateUKDriverLicense(ukLicense);
  debugPrint('UK Driver\'s License Validation: $ukValidationResult3');
  // Output: UK Driver's License Validation: null (No error message, since the number is valid)

  // Example of using integer extensions
  int num1 = 5;
  int num2 = 10;

  // Find factorial of an integer
  int factorialNum1 = num1.factorial();
  debugPrint(
      'Factorial of $num1 is: $factorialNum1'); // Output: Factorial of 5 is: 120

  // Check if an integer is even or odd
  bool isNum1Even = num1.isEven;
  bool isNum2Even = num2.isEven;
  debugPrint('$num1 is even: $isNum1Even'); // Output: 5 is even: false
  debugPrint('$num2 is even: $isNum2Even'); // Output: 10 is even: true

  // Generate a list of divisors of an integer
  List<int> divisorsNum1 = num1.divisors;
  List<int> divisorsNum2 = num2.divisors;
  debugPrint(
      'Divisors of $num1: $divisorsNum1'); // Output: Divisors of 5: [1, 5]
  debugPrint(
      'Divisors of $num2: $divisorsNum2'); // Output: Divisors of 10: [1, 2, 5, 10]

  // Check if an integer is a power of two
  bool isNum1PowerOfTwo = num1.isPowerOfTwo;
  bool isNum2PowerOfTwo = num2.isPowerOfTwo;
  debugPrint(
      '$num1 is a power of two: $isNum1PowerOfTwo'); // Output: 5 is a power of two: false
  debugPrint(
      '$num2 is a power of two: $isNum2PowerOfTwo'); // Output: 10 is a power of two: false

  // Convert an integer to hexadecimal, binary, and octal representations
  String num1Hexadecimal = num1.toHexadecimalString();
  String num1Binary = num1.toBinaryString();
  String num1Octal = num1.toOctalString();
  debugPrint(
      'Hexadecimal representation of $num1: $num1Hexadecimal'); // Output: Hexadecimal representation of 5: 5
  debugPrint(
      'Binary representation of $num1: $num1Binary'); // Output: Binary representation of 5: 101
  debugPrint(
      'Octal representation of $num1: $num1Octal'); // Output: Octal representation of 5: 5

  // Check if an integer is a palindrome
  bool isNum1Palindrome = num1.isPalindrome;
  bool isNum2Palindrome = num2.isPalindrome;
  debugPrint(
      '$num1 is a palindrome: $isNum1Palindrome'); // Output: 5 is a palindrome: true
  debugPrint(
      '$num2 is a palindrome: $isNum2Palindrome'); // Output: 10 is a palindrome: false

  // Example of using list extensions
  List<int> duplicateList = [1, 2, 2, 3, 4, 4, 5];

  // Remove duplicates from a list
  List<int> uniqueList = duplicateList.removeDuplicates();
  debugPrint(
      'Unique elements in duplicateList: $uniqueList'); // Output: Unique elements in duplicateList: [1, 2, 3, 4, 5]

  // Examples of using validation functions
  String gstNumber = "12ABCDE1234F1Z5";
  String aadhaarCard = "123456789012";
  String panCard = "ABCDE1234F";
  String passportNumber = "AB1234567";
  String ssnNumber = "123-45-6789";
  String ukNIN = "AB-12-34-56-Z";
  String canadianSIN = "123-456-789";
  String australianTFN = "123-456-789";
  String nigerianNIN = "123-456-789";
  String malaysianIC = "123456-78-9012";
  String southAfricanPIN = "123456";
  String bangladeshiNID = "1234567890123";
  String spanishNSSN = "123456789012";
  String swedishPN = "1234567890-1234";

  // Validate GST Number
  String? gstValidationResult = validateGSTNumber(gstNumber);
  debugPrint('GST Number Validation: $gstValidationResult');
  // Output: GST Number Validation: null (No error message, since the number is valid)

  // Validate Aadhaar Card Number
  String? aadhaarValidationResult = validateAadhaarCard(aadhaarCard);
  debugPrint('Aadhaar Card Validation: $aadhaarValidationResult');
  // Output: Aadhaar Card Validation: null (No error message, since the number is valid)

  // Validate PAN Card Number
  String? panValidationResult = validatePANCard(panCard);
  debugPrint('PAN Card Validation: $panValidationResult');
  // Output: PAN Card Validation: null (No error message, since the number is valid)

  // Validate Passport Number
  String? passportValidationResult = validatePassportNumber(passportNumber);
  debugPrint('Passport Number Validation: $passportValidationResult');
  // Output: Passport Number Validation: null (No error message, since the number is valid)

  // Validate Social Security Number (SSN) - United States
  String? ssnValidationResult = validateSSN(ssnNumber);
  debugPrint('SSN Validation: $ssnValidationResult');
  // Output: SSN Validation: null (No error message, since the number is valid)

  // Validate National Insurance Number (NIN) - United Kingdom
  String? ukNINValidationResult = validateUKNIN(ukNIN);
  debugPrint('UK NIN Validation: $ukNINValidationResult');
  // Output: UK NIN Validation: null (No error message, since the number is valid)

  // Validate Social Insurance Number (SIN) - Canada
  String? canadianSINValidationResult = validateCanadianSIN(canadianSIN);
  debugPrint('Canadian SIN Validation: $canadianSINValidationResult');
  // Output: Canadian SIN Validation: null (No error message, since the number is valid)

  // Validate Tax File Number (TFN) - Australia
  String? australianTFNValidationResult = validateAustralianTFN(australianTFN);
  debugPrint('Australian TFN Validation: $australianTFNValidationResult');
  // Output: Australian TFN Validation: null (No error message, since the number is valid)

  // Validate National Identification Number (NIN) - Nigeria
  String? nigerianNINValidationResult = validateNigerianNIN(nigerianNIN);
  debugPrint('Nigerian NIN Validation: $nigerianNINValidationResult');
  // Output: Nigerian NIN Validation: null (No error message, since the number is valid)

  // Validate Identity Card Number (IC) - Malaysia
  String? malaysianICValidationResult = validateMalaysianIC(malaysianIC);
  debugPrint('Malaysian IC Validation: $malaysianICValidationResult');
  // Output: Malaysian IC Validation: null (No error message, since the number is valid)

  // Validate Personal Identification Number (PIN) - South Africa
  String? southAfricanPINValidationResult =
      validateSouthAfricanPIN(southAfricanPIN);
  debugPrint('South African PIN Validation: $southAfricanPINValidationResult');
  // Output: South African PIN Validation: null (No error message, since the number is valid)

  // Validate National Identification Number (NID) - Bangladesh
  String? bangladeshiNIDValidationResult =
      validateBangladeshiNID(bangladeshiNID);
  debugPrint('Bangladeshi NID Validation: $bangladeshiNIDValidationResult');
  // Output: Bangladeshi NID Validation: null (No error message, since the number is valid)

  // Validate Social Security Number (NSSN) - Spain
  String? spanishNSSNValidationResult = validateSpanishNSSN(spanishNSSN);
  debugPrint('Spanish NSSN Validation: $spanishNSSNValidationResult');
  // Output: Spanish NSSN Validation: null (No error message, since the number is valid)

  // Validate Personal Number (PN) - Sweden
  String? swedishPNValidationResult = validateSwedishPN(swedishPN);
  debugPrint('Swedish PN Validation: $swedishPNValidationResult');
  // Output: Swedish PN Validation: null (No error message, since the number is valid)

  // Example of masking sensitive information
  String creditCardNumber = "1234 5678 9012 3456";
  String maskedCreditCard = maskSensitiveInformation(creditCardNumber);
  debugPrint('Masked Credit Card: $maskedCreditCard');
  // Output: Masked Credit Card: ************3456
}
