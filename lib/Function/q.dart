import 'dart:io';

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

class Student extends Person {
  String grade;

  Student(String name, int age, String address, this.grade)
      : super(name, age, address);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Grade: $grade');
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, int age, String address, this.subject)
      : super(name, age, address);

  void displayInfo() {
    super.displayInfo();
    print('Subject: $subject');
  }
}

void main() {
  print('Enter Student Details:');

  print("Name : ");
  String studentName = stdin.readLineSync()!;

  print('Age: ');
  int studentAge = int.parse(stdin.readLineSync()!);



  print('Address: ');
  String studentAddress = stdin.readLineSync()!;

  print('Grade: ');
  String studentGrade = stdin.readLineSync()!;

  Student student =

      Student(studentName, studentAge, studentAddress, studentGrade);
  print('\nStudent Info:');
  student.displayInfo();

  print('');



  print('Enter Teacher Details:');

  print('Name: ');
  String teacherName = stdin.readLineSync()!;

  print('Age: ');
  int teacherAge = int.parse(stdin.readLineSync()!);

  print('Address: ');
  String teacherAddress = stdin.readLineSync()!;

  print('Subject: ');
  String teacherSubject = stdin.readLineSync()!;

  Teacher teacher =
      Teacher(teacherName, teacherAge, teacherAddress, teacherSubject);
  print('\nTeacher Info:');
  teacher.displayInfo();
}
