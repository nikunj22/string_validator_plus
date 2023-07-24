//Find Factorial Extension
extension IntFactorialExtension on int {
  // The extension method 'factorial' is added to the 'int' class.
  // It calculates the factorial of the integer and returns the result.

  int factorial() {
    // The method definition begins with the 'int' return type, indicating that
    // this method will return an integer value.

    if (this < 0) {
      throw ArgumentError('Factorial is not defined for negative integers.');
    }
    // Check if the input integer is negative. Factorial is not defined for negative numbers,
    // so an 'ArgumentError' is thrown if the number is negative.

    if (this == 0 || this == 1) {
      return 1;
    }
    // Factorial of 0 and 1 is 1, so if the input integer is 0 or 1, the method returns 1.

    int result = 1;
    // Initialize a variable 'result' to store the factorial value, starting with 1.

    for (int i = 2; i <= this; i++) {
      result *= i;
    }
    // Loop through all numbers from 2 up to the input integer 'this'.
    // Multiply the 'result' by each number in the loop to calculate the factorial.

    return result;
    // The factorial value is returned.
  }
}

//Check Number is Odd or even
extension IntIsEvenOrOddExtension on int {
  // The extension getter 'isEven' and 'isOdd' are added to the 'int' class.
  // They provide a convenient way to check if an integer is even or odd.

  bool get isEven => this % 2 == 0;
  // The 'get' keyword defines a getter method that returns a boolean value.

  // The 'isEven' getter checks if the integer is even by dividing it by 2 and checking the remainder.
  // If the remainder is 0, the number is even, and it returns true; otherwise, it returns false.

  bool get isOdd => this % 2 != 0;
// The 'isOdd' getter checks if the integer is odd by dividing it by 2 and checking the remainder.
// If the remainder is not 0, the number is odd, and it returns true; otherwise, it returns false.
}

//Check if an Integer is Prime:
extension IntIsPrimeExtension on int {
  // The extension getter 'isPrime' is added to the 'int' class.
  // It provides a convenient way to check if an integer is a prime number.

  bool get isPrime {
    // The method definition begins with the 'bool' return type, indicating that
    // this method will return a boolean value.

    if (this <= 1) return false;
    // If the input integer is less than or equal to 1, it is not a prime number, so return false.

    if (this <= 3) return true;
    // If the input integer is 2 or 3, it is a prime number, so return true.

    if (this % 2 == 0 || this % 3 == 0) return false;
    // Check if the input integer is divisible by 2 or 3. If it is, then it is not a prime number, so return false.

    for (int i = 5; i * i <= this; i += 6) {
      // Start the loop from 5 (since we already checked 2 and 3).
      // The loop continues until 'i * i' becomes greater than the input integer 'this'.
      // Increment 'i' by 6 in each iteration, to check for factors of the form (6k ± 1).

      if (this % i == 0 || this % (i + 2) == 0) return false;
      // Check if the input integer is divisible by 'i' or 'i + 2'.
      // If it is, then it is not a prime number, so return false.
    }

    return true;
    // If none of the conditions above are met, the number is a prime number, so return true.
  }
}

// Calculate the Greatest Common Divisor (GCD):
extension IntGCDExtension on int {
  int gcd(int other) {
    // The extension method 'gcd' is added to the 'int' class.
    // It calculates the Greatest Common Divisor (GCD) of two integers and returns the result.

    int a = abs();
    int b = other.abs();
    // Take the absolute values of both integers to handle negative numbers.

    while (b != 0) {
      // Euclidean algorithm to find the GCD.
      // The algorithm continues until 'b' becomes zero.

      int temp = b;
      b = a % b;
      a = temp;
      // Update 'a' to be the value of 'b', and 'b' to be the remainder of 'a' divided by 'b'.
    }

    return a;
    // The GCD is stored in 'a' and returned.
  }
}

// Check if an Integer is a Perfect Square:
extension IntIsPerfectSquareExtension on int {
  bool get isPerfectSquare {
    // The extension getter 'isPerfectSquare' is added to the 'int' class.
    // It checks if the integer is a perfect square and returns true or false accordingly.

    if (this < 0) return false;
    // Negative numbers are not perfect squares, so return false.

    int sqrtValue = this ~/ 2;
    // Initialize 'sqrtValue' as half of the integer, to start with an initial approximation.

    while (sqrtValue * sqrtValue > this) {
      // Newton's method to find the square root of the number.
      // The loop continues until 'sqrtValue * sqrtValue' becomes less than or equal to the integer.

      sqrtValue = (sqrtValue + this ~/ sqrtValue) ~/ 2;
      // Calculate a better approximation for the square root.
    }

    return sqrtValue * sqrtValue == this;
    // If the square of 'sqrtValue' is equal to the integer, it is a perfect square, and the method returns true.
  }
}

// Find the Least Common Multiple (LCM):
extension IntLCMExtension on int {
  int lcm(int other) {
    // The extension method 'lcm' is added to the 'int' class.
    // It calculates the Least Common Multiple (LCM) of two integers and returns the result.

    int a = abs();
    int b = other.abs();
    // Take the absolute values of both integers to handle negative numbers.

    return a * b ~/ a.gcd(b);
    // LCM can be calculated as the product of the two integers divided by their GCD.
  }
}

// Generate a List of Divisors:
extension IntDivisorsExtension on int {
  List<int> get divisors {
    // The extension getter 'divisors' is added to the 'int' class.
    // It generates a list of all divisors of the integer and returns the list.

    List<int> divisorsList = [];
    // Initialize an empty list to store the divisors.

    for (int i = 1; i <= this; i++) {
      // Loop through all numbers from 1 up to the integer.

      if (this % i == 0) {
        // If 'i' is a divisor (remainder is zero), add it to the list.

        divisorsList.add(i);
      }
    }

    return divisorsList;
    // The list of divisors is returned.
  }
}

// Check if an Integer is a Power of Two:
extension IntIsPowerOfTwoExtension on int {
  bool get isPowerOfTwo {
    // The extension getter 'isPowerOfTwo' is added to the 'int' class.
    // It checks if the integer is a power of two and returns true or false accordingly.

    return this > 0 && (this & (this - 1)) == 0;
    // A number is a power of two if it is greater than 0 and has only one bit set to 1 in its binary representation.
    // Using bitwise AND operation (&) of the number and its predecessor (this - 1),
    // if the result is 0, it means there is only one bit set to 1, making it a power of two.
  }
}

// Convert an Integer to Hexadecimal Representation:
extension IntToHexadecimalExtension on int {
  String toHexadecimalString() {
    // The extension method 'toHexadecimalString' is added to the 'int' class.
    // It converts the integer to its hexadecimal representation and returns the result as a string.

    return toRadixString(16);
    // The 'toRadixString' method is used to convert the integer to a hexadecimal string representation.
    // The radix parameter (16) specifies the base, which is 16 for hexadecimal.
  }
}

// Convert an Integer to Binary Representation:
extension IntToBinaryExtension on int {
  String toBinaryString() {
    // The extension method 'toBinaryString' is added to the 'int' class.
    // It converts the integer to its binary representation and returns the result as a string.

    return toRadixString(2);
    // The 'toRadixString' method is used to convert the integer to a binary string representation.
    // The radix parameter (2) specifies the base, which is 2 for binary.
  }
}

// Convert an Integer to Octal Representation:
extension IntToOctalExtension on int {
  String toOctalString() {
    // The extension method 'toOctalString' is added to the 'int' class.
    // It converts the integer to its octal representation and returns the result as a string.

    return toRadixString(8);
    // The 'toRadixString' method is used to convert the integer to an octal string representation.
    // The radix parameter (8) specifies the base, which is 8 for octal.
  }
}

// Check if an Integer is a Palindrome:
extension IntIsPalindromeExtension on int {
  bool get isPalindrome {
    // The extension getter 'isPalindrome' is added to the 'int' class.
    // It checks if the integer is a palindrome and returns true or false accordingly.

    String numberString = toString();
    // Convert the integer to a string representation.

    return numberString == numberString.split('').reversed.join();
    // Compare the original string with its reversed version to check if it is a palindrome.
  }
}

// Find the Number of Digits in an Integer:
extension IntNumberOfDigitsExtension on int {
  int get numberOfDigits {
    // The extension getter 'numberOfDigits' is added to the 'int' class.
    // It calculates and returns the number of digits in the integer.

    return this == 0 ? 1 : (toString().replaceAll('-', '').length);
    // If the integer is 0, it has 1 digit.
    // Otherwise, count the number of digits by converting the integer to a string
    // and removing the negative sign (if any) before calculating the length of the string.
  }
}

// Calculate the Sum of Digits of an Integer:
extension IntSumOfDigitsExtension on int {
  int get sumOfDigits {
    // The extension getter 'sumOfDigits' is added to the 'int' class.
    // It calculates and returns the sum of the digits in the integer.

    int sum = 0;
    int num = abs();
    // Take the absolute value of the integer to handle negative numbers.

    while (num > 0) {
      sum += num % 10;
      num ~/= 10;
      // Extract the last digit (num % 10) and add it to the sum.
      // Remove the last digit by performing integer division (num ~/= 10).
    }

    return sum;
    // Return the total sum of digits in the integer.
  }
}
