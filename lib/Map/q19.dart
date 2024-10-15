//Write a function that takes a list of numbers and removes all occurrences of a specified number.


void main() {
  List<int> numbers = [2, 4, 8, 2, 40, 6, 2];


  List<int> updatedNumbers = removeOccurrences(numbers, 2);

  print(updatedNumbers);
}

List<int> removeOccurrences(List<int> numbers, int numberToRemove) {
  return numbers.where((number) => number != numberToRemove).toList();
}

