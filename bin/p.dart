void main(){
  calculateDiscount(price: 100);
  calculateDiscount(price: 100, discount: 4);
  calculateDiscount(price: 100, discount: 4, tax: 15);
}

calculateDiscount({required double price,double discount=0,double tax=0}){
   double finalPrice = price - (price*discount/100)+(price*tax/100);
   print('Final price: $finalPrice');
    return finalPrice;
}