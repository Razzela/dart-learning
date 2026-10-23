int totalCall = 0;
void main() {
  greet();
  greet();
  greet();
  //print(totalCall);
  introduce('Alex', 25);
  introduce('Mike', 30);
  introduce('Jack', 19);
  //print(totalCall);
  int result = addNumbers(5, 8);
  ////
  calculateDiscount(price: 100);
  calculateDiscount(price: 100, discount: 10);
  calculateDiscount(price: 100, discount: 5, tax: 2.5);
  print('Total function calls: $totalCall');
}

void greet() {
  print('Hello! Welcome to Dart programming');
  totalCall++;
}

void introduce(String name, int age) {
  print('My name is $name and I am $age years old');
  totalCall++;
}

int addNumbers(int a, int b) {
  totalCall++;
  int sum = a + b;
  print('Sum of $a and $b is $sum');
  return sum;
}

//////......
void calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCall++;
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  print('Final price: $finalPrice');
}
