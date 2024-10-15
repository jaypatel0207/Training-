//Use inheritance to create a Person class with name and age, and a Student subclass that adds a grade property.
import 'dart:io';

class Person {
  String? name;
  int? age;
  Person({this.name, this.age});

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class Student extends Person {
  String? grade;

  Student(String name, int age, this.grade);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Grade: $grade');
  }
}

void main() {
  print("Enter Student Details");

  print("Name  : ");
  String? studentname = stdin.readLineSync()!;

  print("age : ");
  int? studentage = int.parse(stdin.readLineSync()!);

  print("Grade : ");
  String? studentgrade = stdin.readLineSync()!;

  Student student = Student(studentname, studentage, studentgrade);
  print("\nStudent Info");
  student.displayInfo();
}
