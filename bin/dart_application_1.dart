int totalCall = 3;

void main() {
  totalCall = add(totalCall, 2);
  print(add(totalCall, 1));
  print(totalCall);
}

int add(int number, int amount) {
  int totalCall = 10;

  totalCall += amount;
  number += amount;

  return totalCall + number;
}