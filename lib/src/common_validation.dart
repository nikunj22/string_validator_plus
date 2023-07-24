// Validate Required Input
String? validateInput(String? value) {
  // Check if the input value is null or empty
  if (value == null || value.isEmpty) {
    return 'This field is required.';
  }

  // Input is not empty, return null (no error message)
  return null;
}

// Validate Email Format
String? validateEmail(String? value) {
  // The regular expression pattern to match email addresses
  RegExp regex = RegExp(
      r'^[_A-Za-z0-9-+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})\$*(\s?)');

  // If the input value is null, assign an empty string to the variable
  var emailNonNullValue = value ?? "";

  // Check if the email is empty
  if (emailNonNullValue.isEmpty) {
    return "Email can't be empty";
  }
  // Check if the email format matches the regular expression
  else if (!regex.hasMatch(emailNonNullValue)) {
    return "Enter correct email";
  }

  // If the email is valid, return null (no error message)
  return null;
}

// Validate Password Strength
String? validatePassword(String? password) {
  const pattern =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$';
  final regex = RegExp(pattern);

  // Check if the password is empty
  if (password == null || password.isEmpty) {
    return "Password can't be empty";
  }
  // Check if the password format matches the regular expression
  else if (!regex.hasMatch(password)) {
    return "Password must contain at least 8 characters, including uppercase, lowercase, digits, and special characters.";
  }

  // If the password is valid, return null (no error message)
  return null;
}

// Validate Confirm Password
String? validateConfirmPassword(String? password, String? confirmPassword) {
  // Check if both password and confirm password are not null and not empty
  if (password == null ||
      password.isEmpty ||
      confirmPassword == null ||
      confirmPassword.isEmpty) {
    return "Please enter both password and confirm password";
  }

  // Check if the passwords match
  if (password != confirmPassword) {
    return "Passwords do not match";
  }

  // Passwords match, return null (no error message)
  return null;
}
