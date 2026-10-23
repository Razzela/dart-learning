void main(){
int count3=0;
int count5=0;
int sum=0;
for(int i=1;i<=100;i++){
  if(i%3==0){
    count3++;
  }
  if(i%5==0){
    count5++;
  }
  if((i%3==0 && i%5!=0)||(i%5==0&&i%3!=0 )){
    sum+=i;
  }
}
  print(count3);
  print(count5);
  print(sum);
print('------------------------');
int count2=0;
int count33=0;
int sum1=0;
for(int i=1;i<=200;i++){
  if(i%2==0){
    count2++;
  }
  if(i%3==0){
    count33++;
  }
  if(i%2==0&&i%3==0){
    sum1+=i;
  }
}
  print(count2);
  print(count33);
  print(sum1);
  print('.......................');

  int max=0;
  for(int i=100;i>=1;i--){
    if(i%7==0 && i>max){
  max=i;
    }
  }
  print(max);
  print('....................');

int min=100;
for(int i=1;i<=100;i++){
  if(i%7==0 && i<min){
    min=i;
  }
}
print(min);
print('.................');

int max1 = 0;
int secondMax = 0;
for(int i=1;i<=100;i++){
  if(i%7==0 && i>max1){
    secondMax=max1;
    max1=i;
  }
}
print(secondMax);
print('.......................');

} 