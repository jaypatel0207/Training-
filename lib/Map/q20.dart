//Given a list of employee records (maps with keys name and salary), filter out employees with a salary below a certain threshold and return a new list.

void main() {
  List<Map<String, dynamic>> employees = [
    {'name': 'jay', 'salary': 45000},
    {'name': 'patel', 'salary': 55000},
    {'name': 'abc', 'salary': 30000},
    {'name': 'xyz', 'salary': 57000},
  ];

  int salaryThreshold = 50000;

  List<Map<String, dynamic>> filteredEmployees = employees
      .where((employee) => employee['salary'] <= salaryThreshold)
      .toList();

  print(filteredEmployees);
}
