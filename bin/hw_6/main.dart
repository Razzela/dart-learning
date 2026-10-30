import 'person.dart';
import 'student.dart';
import 'subjects.dart';
import 'teacher.dart';

void main() {
  Person person = Person('Alice Jonson', 30, true);
 // person.introduce();

  print('------------Teacher-----------------');
  Teacher teacher=Teacher('Josh Milton', 40, true, 5);
  teacher.introduce();
    print('--------------Student_1---------------');
  //Students
  Student student1 = Student('Jon Ferel', 23, false, {
    Subject.math: 90,
    Subject.physics: 86,
    Subject.english: 82,
  });
  student1.introduce();
  student1.showMarks();
  print('-------------Student_2----------------');
  Student student2 = Student('Bill Myrrey', 20, true, {
    Subject.math: 60,
    Subject.physics: 78,
    Subject.english: 45,
  });
  student2.introduce();
  student2.showMarks();
}
