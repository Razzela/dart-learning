class Car {
  String brand;
  int year;
  int _mileage = 0;

  Car(this.year, this.brand,);
  // можно было написать так
  /*
  Car(this.year, this.brand, int mileage) {
    if (mileage < 0) {
      print('Пробег не может быть отрицательным, ставлю 0');
    } else {
      _mileage = mileage;
    }
  }
  */

  void info() {
    print('$brand $year год пробег $_mileage km');
  }

  void drive(int km) {
    if(km<=0){
      print('Пробег не должен быть 0');
    return;
    }
    _mileage += km;
    
  }
  int get mileage => _mileage;
}

void main() {
  Car car1 = Car(2020, 'Toyota');
  Car car2 = Car(2021, 'Honda');

  car1.drive(0);
  car2.drive(40);

  car1.info();
  car2.info();
}
