//Create a class hierarchy with a base class Vehicle and derived classes Car and Bike. Override a method drive() in each subclass.

class Vehicle {
  void drive() {
    print('Driving a vehicle');
  }
}

class Car extends Vehicle {
  @override
  void drive() {
    print('Driving a car');
  }
}

class Bike extends Vehicle {
  @override
  void drive() {
    print('Riding a bike');
  }
}

void main() {
  Vehicle myCar = Car();
  Vehicle myBike = Bike();

  myCar.drive();
  myBike.drive();
}
