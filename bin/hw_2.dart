import 'dart:io';

void main() {
  print('How old are you?');
  int age = int.parse(stdin.readLineSync()!);
  print('what\'s the temperature outside?');
  int temperature = int.parse(stdin.readLineSync()!);
  if (age >= 20 && age <= 45 && temperature >= -20 && temperature <= 30) {
    print('you can go for a walk');
  } else if (age < 20 && temperature >= 0 && temperature <= 28) {
    print('you can go for a walk');
  } else if (age > 45 && temperature >= -10 && temperature <= 25) {
    print('you can go for a walk');
  } else {
    print('Stay home');
  }
  // 2. Дни недели
  print('Enter the day of the week');
  String day = stdin.readLineSync()!.toLowerCase();
  switch (day) {
    case 'monday':
      print('It\'s the start of the week!');
      break;
    case 'tuesday':
    case 'wednesday':
    case 'thursday':
      print('Keep going, almost weekend!');
      break;
    case 'friday':
      print('Weekend is coming!');
      break;
    case 'saturday':
    case 'sunday':
      print('Enjoy your weekend!');
    default:
      print('Invalid day.');
  }
  //3. Проверка пароля
  print('Enter your password:');
  String password = stdin.readLineSync()!;
  if (password.isEmpty) {
    print('Password cannot be empty.');
  } else {
    if (password.length < 6) {
      print('Password too short.');
    } else {
      if (password == 'dart123') {
        print('Access granted.');
      } else {
        print('Wrong password.');
      }
    }
  }
}
