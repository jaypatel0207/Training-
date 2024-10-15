//Write a function that takes a list of numbers and returns the list sorted in ascending order.

import 'dart:io';

List<int> sortNumbersAscending(List<int> numbers) {
  numbers.sort();
  return numbers;
}

void main() {
  print('Enter numbers separated by space:');
  String? input = stdin.readLineSync();

  List<int> numbers = input!.replaceAll(',', ' ').split(' ').map(int.parse).toList();

  List<int> sortedNumbers = sortNumbersAscending(numbers);

  print('Sorted List in Ascending Order: $sortedNumbers');
}
