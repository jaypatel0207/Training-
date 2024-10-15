// Given a list of products as maps, sort the products by price in descending order.

void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 70000},
    {'name': 'Mouse', 'price': 500},
    {'name': 'Screen', 'price': 20000},
    {'name': 'KeyBoard', 'price': 1500},
  ];

  products.sort((a, b) => b['price'].compareTo(a['price']));

  print(products);
}
