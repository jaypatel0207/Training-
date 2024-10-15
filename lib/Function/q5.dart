//Write a class Shape with a method area(), and implement Circle and Square subclasses to calculate the area based on the type.

import 'dart:io';
import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

void main() {
  print("Enter a circle radius: ");
  double Radius = double.parse(stdin.readLineSync()!);

  Shape circle = Circle(Radius);

  print('Area of the circle: ${circle.area().toStringAsFixed(2)}');

  print("Enter a Side of Square: ");
  double Side = double.parse(stdin.readLineSync()!);
  Shape square = Square(Side);
  print('Area of the square: ${square.area().toStringAsFixed(2)}');
}
