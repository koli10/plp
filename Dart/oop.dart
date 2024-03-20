// The challenge is to create a program that has the following features:

// An object-oriented model that uses classes and inheritance
// A class that implements an interface
// A class that overrides an inherited method
// An instance of a class that is initialized with data from a file
// A method that demonstrates the use of a loop
import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Parent class
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Child class implementing an interface and overriding a method
class Dog extends LivingBeing implements Animal {
  @override
  void makeSound() {
    print('Woof woof!');
  }

  // Constructor initializing from a file
  Dog.fromFile(String filePath) {
    try {
      File file = File(filePath);
      List<String> lines = file.readAsLinesSync();
      print('Initializing Dog from file...');
      print('Name: ${lines[0]}');
      print('Breed: ${lines[1]}');
    } catch (e) {
      print('Error reading file: $e');
    }
  }
}

// Method demonstrating the use of a loop
void countDown(int seconds) {
  print('Countdown started...');
  for (int i = seconds; i > 0; i--) {
    print('$i seconds remaining...');
    sleep(Duration(seconds: 1)); // Wait for 1 second
  }
  print('Countdown complete!');
}

void main() {
  // Creating an instance of Dog initialized with data from a file
  Dog myDog = Dog.fromFile('dog_data.txt');
  myDog.makeSound(); // Output: Woof woof!

  // Demonstrating the use of a loop
  countDown(5); // Countdown from 5 seconds
}
