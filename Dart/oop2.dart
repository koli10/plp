// Abstraction
// polymophism
// Encapsulation
// Abstraction
// constructor is a special method that is attomatically called when an object is created 
// default Constructor is automatically called if no costructor is created
// parameterized  constructor - we can pass values to the variables of class through this constructor.
// -----------------------------------------------

// Data Encapsulation
// Data encapsulation is the process of keeping a class' implementation details hidden from the user through an object's functions.

// How To Achieve Encapsulation In Dart
// Encapsulation can be achieved by:

// Declaring the class properties as private by using underscore(_).
// Providing public getter and setter methods to access and update the value of private property.
// Base/parent class

class Vehicle {

String brand;

int year;


//parameterized constructor
Vehicle(this.brand, this.year);


//Function/method to display
void displayInfo() {

print('Vehicle Information (parent): $year $brand');

}

}


// inheritance begin here
// Derived class (inherits from Vehicle)

class Car extends Vehicle {

String model; //child property


// Child consructor 
Car(String brand, this.model, int year) : super(brand, year);


//method showing child information
void displayCarInfo() {

print('Car Information(Child): $year $brand $model');

}

}



void main() {

// Create an instance/object of the Car class

Car myCar = Car('Toyota', 'Camry', 2022);



// Access and display information using methods from both Vehicle and Car classes

myCar.displayInfo();

myCar.displayCarInfo();

}


