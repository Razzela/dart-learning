int totalCalls = 0;

void calculateDiscount({
  required double price,
  double discount = 0,
  double tax = 0,
}) {
  totalCalls++;

  double finalPrice =
      price - (price * discount / 100) + (price * tax / 100);

  print('Final price: $finalPrice');
}

void main() {
  calculateDiscount(price: 100);

  calculateDiscount(price: 100, discount: 10);

  calculateDiscount(price: 100, discount: 5, tax: 2.5);

  print('Total calls: $totalCalls');
}