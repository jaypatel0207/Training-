//Implement a class BankAccount with methods for depositing, withdrawing, and checking the balance. Ensure that the balance cannot go negative.

import 'dart:io';

class BankAccount {
  double _balance = 0;

  double getBalance() {
    return _balance;
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive!');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive!');
    } else if (amount > _balance) {
      print(
          'Insufficient funds! Cannot withdraw more than the available balance.');
    } else {
      _balance -= amount;
      print('Withdrew: \$${amount.toStringAsFixed(2)}');
    }
  }
}

void main() {
  BankAccount myAccount = BankAccount();

  print("Enter a deposit Amount: ");
  double? deposit = double.parse(stdin.readLineSync() ?? "0");
  myAccount.deposit(deposit as double);

  print("Enter a Withdraw Amount: ");
  double? withdraw = double.parse(stdin.readLineSync() ?? "0");
  myAccount.withdraw(withdraw as double);

  print('Current balance: \$${myAccount.getBalance().toStringAsFixed(2)}');
}




