//Create a class Order with private properties for orderNumber, orderDate, and items. Add getter methods to retrieve these properties.

import 'dart:io';

class Order {
  final int _orderNumber;
  final DateTime _orderDate;
  final List<String> _items;

  Order(this._orderNumber, this._orderDate, this._items);

  int get orderNumber => _orderNumber;

  DateTime get orderDate => _orderDate;

  List<String> get items => _items;
}

void main() {
  print('Enter order number:');
  int? orderNumber = int.tryParse(stdin.readLineSync()!);

  print('Enter items (comma separated):');
  String? itemsInput = stdin.readLineSync();

  List<String> items = itemsInput != null ? itemsInput.split(',') : [];

  Order order = Order(orderNumber!, DateTime.now(), items);

  print('Order Number: ${order.orderNumber}');
  print('Order Date: ${order.orderDate}');
  print('Items: ${order.items.join(', ')}');
}
