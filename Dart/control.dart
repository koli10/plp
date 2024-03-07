import 'dart:io';

void main() {
  // Prompt the user for a number
  print("Enter a number: ");

  // Read the user input as a string
  String userInput = stdin.readLineSync()!;

  // Parse the string input to an integer
  int userNumber = int.tryParse(userInput) ?? 0;

  // Check the conditions and print the appropriate message
  if (userNumber > 10) {
    print("Your number is greater than 10");
  } else if (userNumber < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}
