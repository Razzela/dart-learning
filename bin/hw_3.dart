void main() {
  for (int n = 1; n <= 30; n++) {
    if (n % 3 == 0 && n % 5 == 0) {
      print('FizzBuzz');
    } else if (n % 3 == 0) {
      print('Fizz');
    } else if (n % 5 == 0) {
      print('Buzz');
    } else {
      print(n);
    }
  }
  // Задание 2
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];
  int sum = 0;
  int count = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 0) {
      sum = sum + numbers[i];
      count = count + 1;
    }
  }
  if (count > 0) {
    double average = sum / count;
    print('Positive numbers: $count');
    print('Average of positive numbers: $average');
  } else {
    print('No positive numbers');
  }
  // Задание 3
  Map<String, int> fruits = {'Apple': 5, 'Banana': 2, 'Mango': 7, 'Orange': 0};
  fruits.forEach((name, count) {
    if (count > 0) {
      print('$name: $count');
    }
  });
}
