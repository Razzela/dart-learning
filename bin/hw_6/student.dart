import 'person.dart';
import 'subjects.dart';

class Student extends Person {
  Student(super.fullName, super.age, super.isMarried, this.marks);

  Map<Subject, double> marks;

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    double sum = 0.0;
    for (var mark in marks.values) {
      sum += mark;
    }
    return sum / marks.length;
  }

  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage()}');
  }
}
