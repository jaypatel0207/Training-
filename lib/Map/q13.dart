//Implement a function that combines two lists of strings into one and removes any duplicates.

List<String> combineAndRemoveDuplicates(
    List<String> list1, List<String> list2) {
  Set<String> combinedSet = {...list1, ...list2};

  return combinedSet.toList();
}

void main() {
  List<String> list1 = ['1', '2', '3'];
  List<String> list2 = ['2', '4', '1', '5'];

  List<String> result = combineAndRemoveDuplicates(list1, list2);

  print(result);
}
