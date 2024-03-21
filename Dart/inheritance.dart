
// This challenge is designed to assess a learner's understanding of advanced object-oriented programming in Dart.



// The challenge is to create a program that meets the following requirements:

// Create two classes, one for a student and one for a teacher.
// The student class should have a name, age and grade level.
// The teacher class should have a name, age, and the subject they teach.
// Create a method in the student class that prints out the student's information.
// Create a method in the teacher class that prints out the teacher's information.
// Create a third class that creates a student and teacher object, and calls the methods to print out the information.

// class student 
class  Student {
  // Students  properties 
  String name;
  int age;
  String gradelevel;

  //parameterized constructor
  Student(this.name,this.age, this.gradelevel);
  
  // Method to dislay student information
  void displaystudentInfo() {
    print("Student Details");
    print("Name : $name");
    print("Age: $age");
    print("Grade Level : $gradelevel");
  }
}
// class Teacher
class Teacher{
  // teacher properties
  String name;
  int age;
  String subject;
  // parameterized constructor
  Teacher(this.name, this.age, this.subject);

  //Method to display Teacher Details
  void displayTeacherInfo(){
    print("Teaher Details");
    print("Name : $name");
    print("Age : $age");
    print("Subject Taught : $subject");
    }
}
// third class 
class  ClassRoom{
  // instance/object of student 
  var  student=Student("Bruno Fernandez",25, "10th Grade");
  // instance/ object of teacher 
  var teacher=Teacher("Pep Guardiolla", 40, "Physics 101");
  //Method to display information
  void displayClassRoomInfo(){
    student.displaystudentInfo();
    teacher.displayTeacherInfo();

  }
}
void main(){
  // Instance of ClassRoom
  var classroom=ClassRoom();
  //method/function to display info
  classroom.displayClassRoomInfo();

}