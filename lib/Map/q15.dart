//Given a list of students with their marks, create a function to calculate the average marks of all students.


double calculateAverageMarks(List<int> marks) {
  if (marks.isEmpty) {
    return 0; 
  }


  int total = marks.reduce((a, b) => a + b);

  
  double average = total / marks.length;

  return average;
}
void main() {

  List<int> studentMarks = [85, 90, 78, 92, 88];

  double average = calculateAverageMarks(studentMarks);

 
  print("Average marks of students: ${average.toStringAsFixed(2)}");
}


