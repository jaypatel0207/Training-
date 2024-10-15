//Create an abstract class Animal with a method speak() and subclasses Dog and Cat that implement this method.

import 'dart:io';

abstract class Animal {
  void speak();
}

class Dog extends Animal {
  @override
  void speak() {
    print("The dog : Bhau! Bhau!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("The cat : Meow! Meow!");
  }
}

void main() {
  print('Choose an animal (1 for Dog, 2 for Cat):');
  String? choice = stdin.readLineSync();

  Animal? animal;

  if (choice == '1') {
    animal = Dog();
  } else if (choice == '2') {
    animal = Cat();
  } else {
    print('Invalid choice.');
    return;
  }

  animal.speak();
}
