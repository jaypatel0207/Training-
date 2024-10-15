//Create a function that takes a list of integers and returns a map where the keys are the integers and the values are the squares of the integers.

Map<int, int> squareIntegers(List<int> numbers) {
  Map<int, int> squaresMap = {};
  for (var number in numbers) {
    squaresMap[number] = number * number;
  }

  return squaresMap;
}

void main() {
  List<int> numbers = [5, 2, 9, 7, 1];
  Map<int, int> result = squareIntegers(numbers);

  print(result);
}
