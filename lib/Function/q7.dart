import 'dart:io';

abstract class Payment {
  void makePayment(double amount);
}

class CreditCardPayment extends Payment {
  final String cardNumber;

  CreditCardPayment(this.cardNumber);

  @override
  void makePayment(double amount) {
    print(
        'Processing credit card payment of \$${amount.toStringAsFixed(2)} using card number $cardNumber');
  }
}

class PaypalPayment extends Payment {
  final String email;

  PaypalPayment(this.email);

  @override
  void makePayment(double amount) {
    print(
        'Processing PayPal payment of \$${amount.toStringAsFixed(2)} using PayPal account $email');
  }
}

void main() {
  print('Choose payment method: 1 for Credit Card, 2 for PayPal');
  String? paymentMethod = stdin.readLineSync();

  print('Enter the amount:');
  double? amount = double.tryParse(stdin.readLineSync()!);

  if (paymentMethod == '1') {
    print('Enter your Credit Card number:');
    String? cardNumber = stdin.readLineSync();
    Payment payment = CreditCardPayment(cardNumber!);
    payment.makePayment(amount!);
  } else if (paymentMethod == '2') {
    print('Enter your PayPal email:');
    String? email = stdin.readLineSync();
    Payment payment = PaypalPayment(email!);
    payment.makePayment(amount!);
  } else {
    print('Invalid payment method selected.');
  }
}
