import 'person.dart';

class Teacher extends Person {
  int experience;
  static double _baseSalary = 50000;

  Teacher(
    super.age,
    super.fullName,
    super.isMarried,
    this.experience,
  );
  double calculateSalary() {
    double salary = _baseSalary;

    if (experience > 3) {
      for (int i = 3; i < experience; i++) {
        salary += salary * 0.05;
      }
    }
    if (isMarried == true) {
      salary += 5000;
    }
    return salary;
  }
  @override
  void introduce(){
    super.introduce();
    print('Experience: $experience year.');
    print('Salary: ${calculateSalary()}');
  }
}
