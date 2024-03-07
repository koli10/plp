void main() {
  num userNumber = 10; // declare and assign 10
  
  // print("Enter a number: ");
  // userNumber = int.parse(stdin.readLineSync());
  // undefined name  'stdin'

  if (userNumber > 10) {
    print("Your number is greater than 10");
  } else if (userNumber < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}
