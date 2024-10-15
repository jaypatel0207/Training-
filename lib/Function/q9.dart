//Demonstrate method overloading by creating a class Calculator that has multiple add() methods for different parameter types (int, double).

import 'dart:io';

class Calculator {
  // Add method for integers
  int add(int a, int b) {
    return a + b;
  }

  // Add method for doubles
  double addDouble(double a, double b) {
    return a + b;
  }

  // Add method for mixed int and double
  double addMixed(int a, double b) {
    return a + b;
  }

  // Add method for three integers
  
}

void main() {
  Calculator calc = Calculator();

  print('Choose the type of addition:');
  print('1. Two integers');
  print('2. Two doubles');
  print('3. An integer and a double');
  
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      print('Enter first integer:');
      int int1 = int.parse(stdin.readLineSync()!);
      print('Enter second integer:');
      int int2 = int.parse(stdin.readLineSync()!);
      int result = calc.add(int1, int2);
      print('Result: $result');
      break;

    case '2':
      print('Enter first double:');
      double double1 = double.parse(stdin.readLineSync()!);
      print('Enter second double:');
      double double2 = double.parse(stdin.readLineSync()!);
      double result = calc.addDouble(double1, double2);
      print('Result: $result');
      break;

    case '3':
      print('Enter an integer:');
      int int1 = int.parse(stdin.readLineSync()!);
      print('Enter a double:');
      double double1 = double.parse(stdin.readLineSync()!);
      double result = calc.addMixed(int1, double1);
      print('Result: $result');
      break;

   

    default:
      print('Invalid choice.');
      break;
  }
}
