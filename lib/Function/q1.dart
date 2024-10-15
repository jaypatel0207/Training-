
//Implement a class Employee with properties: name, id, salary, and methods to calculate yearly salary.

import 'dart:io';

class Employee {
  String name;
  int id;
  int salary;

  Employee(this.name, this.id, this.salary);

  int calculateYearlySalary() {
    return salary * 12;
  }

  @override
  String toString() {
    return 'Employee(name: $name, id: $id, salary: $salary)';
  }
}

void main() {
  print('Enter employee name:');
  String name = stdin.readLineSync() ?? '';

  print('Enter employee ID:');
  int id = int.parse(stdin.readLineSync() ?? '0');

  print('Enter employee monthly salary:');
  int salary = int.parse(stdin.readLineSync() ?? '0');

  var employee = Employee(name, id, salary);
  print('\nEmployee Details:');
  print(employee);
  print(
      'Yearly Salary: \$${employee.calculateYearlySalary().toStringAsFixed(2)}');
}
