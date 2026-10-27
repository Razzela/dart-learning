void main(){

Car car1=Car('Toyota', 2018);
Car car2=Car('BMW', 2020);
car1.showInfo();
car2.showInfo();

}


class Car{

String brand;
int year;

Car(this.brand,this.year);

void showInfo(){
  print('Марка: $brand,Год $year');
}
}