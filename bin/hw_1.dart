// 1. Программа моя визитка
void main() {
  String name = 'Rodion';
  int age = 38;
  String city = 'Bishkek';
  String profession = 'Software Engineer';
  String hobby = 'Playing Guitar';
  print('''
Hello! My name is $name. 
I am $age years old and i live in $city.
My profession is $profession and my hobby is $hobby.''');

  // 2.Расчет дохода
  int salary = (1500);
  int yearlyIncome = salary * 12;
  var yearlyIncomeWithBonus = yearlyIncome * 10 ~/ 100;
  print('My yearly income: $yearlyIncome usd.');
  print('My yearly income with 10% bonus: $yearlyIncomeWithBonus usd.');

  //3. Работа со строкой
  String str = (' Knowledge is power, but practice makes perfect. ');
  print(str.trim());
  print(str.toUpperCase());
  print(str.replaceAll('practice', 'experience'));
  print(str.contains('power'));

  //4. Математические задача
  int apples = 12;
  int people = 5;
  print('Each person gets ${apples ~/ people}.');
  print('Apples left: ${apples % people}.');

  //5. Год рождения
  int currentYear = 2026;
  int myAge = 38;
  print('I was born in ${currentYear - myAge}.');

  //6. var и final
  var citty = 'Osh';
  final country = 'Kyrgyzstan';
  // counntry = 'Kyrgyz Republic'; Значение переменной var можно менять, а значение переменной final менять нельзя.
  print('City: $citty');
  print('Country: $country');
}
