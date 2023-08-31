/// Extension for calculating the factorial of an integer.
extension IntFactorialExtension on int {
  /// Calculates and returns the factorial of the integer.
  ///
  /// If the input integer is negative, an [ArgumentError] is thrown
  /// as factorial is not defined for negative numbers.
  ///
  /// Factorial of 0 and 1 is 1, so if the input integer is 0 or 1,
  /// the method returns 1.
  ///
  /// For other positive integers, it calculates the factorial by
  /// multiplying all the integers from 2 up to the input integer.
  ///
  /// Returns the factorial value as an integer.
  int factorial() {
    if (this < 0) {
      throw ArgumentError('Factorial is not defined for negative integers.');
    }

    if (this == 0 || this == 1) {
      return 1;
    }

    int result = 1;

    for (int i = 2; i <= this; i++) {
      result *= i;
    }

    return result;
  }
}

/// Extension for checking if an integer is even or odd.
extension IntIsEvenOrOddExtension on int {
  /// Checks if the integer is even.
  ///
  /// Returns `true` if the integer is even (divisible by 2 without remainder),
  /// otherwise returns `false`.
  bool get isEven => this % 2 == 0;

  /// Checks if the integer is odd.
  ///
  /// Returns `true` if the integer is odd (not divisible by 2 without remainder),
  /// otherwise returns `false`.
  bool get isOdd => this % 2 != 0;
}

/// Extension for checking if an integer is prime.
extension IntIsPrimeExtension on int {
  /// Checks if the integer is a prime number.
  ///
  /// Returns `true` if the integer is a prime number, and `false` otherwise.
  ///
  /// Prime numbers are defined as positive integers greater than 1 that have
  /// no positive integer divisors other than 1 and themselves.
  ///
  /// This method uses a primality test that is efficient for most practical purposes.
  bool get isPrime {
    if (this <= 1) return false; // 1 and below are not prime.

    if (this <= 3) return true; // 2 and 3 are prime.

    if (this % 2 == 0 || this % 3 == 0)
      return false; // Divisible by 2 or 3 is not prime.

    for (int i = 5; i * i <= this; i += 6) {
      // Check for factors of the form (6k ± 1).

      if (this % i == 0 || this % (i + 2) == 0)
        return false; // Divisible by i or i+2 is not prime.
    }

    return true; // If none of the conditions above are met, it's a prime number.
  }
}

/// Extension for calculating the Greatest Common Divisor (GCD) of integers.
extension IntGCDExtension on int {
  /// Calculates the Greatest Common Divisor (GCD) of this integer and another integer.
  ///
  /// Returns the GCD of this integer and [other].
  ///
  /// The GCD is the largest positive integer that divides both this integer and [other].
  ///
  /// This method uses the Euclidean algorithm to calculate the GCD.
  int gcd(int other) {
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

/// Extension for checking if an integer is a perfect square.
extension IntIsPerfectSquareExtension on int {
  /// Checks if the integer is a perfect square.
  ///
  /// Returns `true` if the integer is a perfect square, and `false` otherwise.
  ///
  /// A perfect square is a non-negative integer that can be expressed as the square of an integer.
  ///
  /// This method uses Newton's method for approximating the square root.
  bool get isPerfectSquare {
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

/// Extension for calculating the Least Common Multiple (LCM) of integers.
extension IntLCMExtension on int {
  /// Calculates the Least Common Multiple (LCM) of this integer and another integer.
  ///
  /// Returns the LCM of this integer and [other].
  ///
  /// The LCM is the smallest positive integer that is divisible by both this integer and [other].
  ///
  /// This method calculates the LCM as the product of the two integers divided by their GCD.
  int lcm(int other) {
    int a = abs();
    int b = other.abs();
    // Take the absolute values of both integers to handle negative numbers.

    return a * b ~/ a.gcd(b);
    // LCM can be calculated as the product of the two integers divided by their GCD.
  }
}

/// Extension for generating a list of divisors of an integer.
extension IntDivisorsExtension on int {
  /// Generates a list of all divisors of this integer.
  ///
  /// Returns a list containing all the positive divisors of this integer.
  ///
  /// Divisors are the positive integers that evenly divide this integer without leaving a remainder.
  ///
  /// This method loops through all numbers from 1 to this integer to find divisors.
  List<int> get divisors {
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

/// Extension for checking if an integer is a power of two.
extension IntIsPowerOfTwoExtension on int {
  /// Checks if this integer is a power of two.
  ///
  /// Returns `true` if this integer is a power of two, and `false` otherwise.
  ///
  /// A number is a power of two if it is greater than 0 and has only one bit set to 1 in its binary representation.
  ///
  /// This method uses a bitwise AND operation to check if the number has only one set bit.
  bool get isPowerOfTwo {
    return this > 0 && (this & (this - 1)) == 0;
    // A number is a power of two if it is greater than 0 and has only one bit set to 1 in its binary representation.
    // Using bitwise AND operation (&) of the number and its predecessor (this - 1),
    // if the result is 0, it means there is only one bit set to 1, making it a power of two.
  }
}

/// Extension for converting an integer to its hexadecimal representation.
extension IntToHexadecimalExtension on int {
  /// Converts this integer to its hexadecimal representation.
  ///
  /// Returns the hexadecimal representation of this integer as a string.
  ///
  /// This method uses the 'toRadixString' method with a radix of 16 to perform the conversion.
  String toHexadecimalString() {
    return toRadixString(16);
    // The 'toRadixString' method is used to convert the integer to a hexadecimal string representation.
    // The radix parameter (16) specifies the base, which is 16 for hexadecimal.
  }
}

/// Extension for converting an integer to its binary representation.
extension IntToBinaryExtension on int {
  /// Converts this integer to its binary representation.
  ///
  /// Returns the binary representation of this integer as a string.
  ///
  /// This method uses the 'toRadixString' method with a radix of 2 to perform the conversion.
  String toBinaryString() {
    return toRadixString(2);
    // The 'toRadixString' method is used to convert the integer to a binary string representation.
    // The radix parameter (2) specifies the base, which is 2 for binary.
  }
}

/// Extension for converting an integer to its octal representation.
extension IntToOctalExtension on int {
  /// Converts this integer to its octal representation.
  ///
  /// Returns the octal representation of this integer as a string.
  ///
  /// This method uses the 'toRadixString' method with a radix of 8 to perform the conversion.
  String toOctalString() {
    return toRadixString(8);
    // The 'toRadixString' method is used to convert the integer to an octal string representation.
    // The radix parameter (8) specifies the base, which is 8 for octal.
  }
}

/// Extension for checking if an integer is a palindrome.
extension IntIsPalindromeExtension on int {
  /// Checks if this integer is a palindrome.
  ///
  /// Returns `true` if this integer is a palindrome, and `false` otherwise.
  ///
  /// A palindrome is a number that reads the same forwards and backwards.
  ///
  /// This method converts the integer to a string and checks if the string is the same when reversed.
  bool get isPalindrome {
    String numberString = toString();
    // Convert the integer to a string representation.

    return numberString == numberString.split('').reversed.join();
    // Compare the original string with its reversed version to check if it is a palindrome.
  }
}

/// Extension for calculating the number of digits in an integer.
extension IntNumberOfDigitsExtension on int {
  /// Calculates the number of digits in this integer.
  ///
  /// Returns the number of digits in this integer.
  ///
  /// This method counts the number of digits by converting the integer to a string
  /// and removing the negative sign (if any) before calculating the length of the string.
  int get numberOfDigits {
    return this == 0 ? 1 : (toString().replaceAll('-', '').length);
    // If the integer is 0, it has 1 digit.
    // Otherwise, count the number of digits by converting the integer to a string
    // and removing the negative sign (if any) before calculating the length of the string.
  }
}

/// Extension for calculating the sum of digits in an integer.
extension IntSumOfDigitsExtension on int {
  /// Calculates the sum of digits in this integer.
  ///
  /// Returns the sum of the digits in this integer.
  ///
  /// This method iteratively extracts the last digit of the integer, adds it to the sum,
  /// and removes the last digit by performing integer division until the integer becomes zero.
  int get sumOfDigits {
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
