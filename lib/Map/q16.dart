// Write a function that reverses a list of strings without using any built-in reverse methods.

List<String> reverseList(List<String> list) {
  List<String> reversedList = [];

  for (var item in list.reversed) {
    reversedList.add(item);
  }

  return reversedList;
}

void main() {
  List<String> strings = ['Jay', 'I Am', 'Hello'];
  List<String> reversed = reverseList(strings);

  print(reversed);
}
