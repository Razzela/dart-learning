import 'dart:io';

void main() {
  int warm = 0; // t > 20
  int cool = 0; // 10 <= t <= 20
  int cold = 0; // t < 10
  for (int i = 1; i < 8; i++) {
    print('Enter temperature for day $i:');
    int t = int.parse(stdin.readLineSync()!);
    if (t > 20) {
      print('It\'s warm today!');
      warm++;
    } else if (t >= 10 && t <= 20) {
      print('It\'s cool today!');
      cool++;
    } else {
      print('It\'s cold today!');
      cold++;
    }
  }
  print('Warm days: $warm');
  print('Cool days: $cool');
  print('Cold days: $cold');
}
