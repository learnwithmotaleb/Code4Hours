void main(){

  // C c = C();
  //
  // c.display();

  Calculator calculator = Calculator();

  print(  calculator.add(1, 10));
  print(  calculator.sub(1, 10));
  print(  calculator.mul(1, 10));






}


class A{
  String? name = "Motaleb";
  void display(){
    print(name);
    print("Class A");
  }

}
class B extends A{
  String? age = "22";
  @override
  void display(){
    super.display();
    print("Class B");
    print(age);
  }
}
class C extends B{
  String? dream = "Google Hack";
  @override
  void display(){
    super.display();
    print("Class C");
    print(dream);
  }


}

class Calculator{

  int add(int a, int b){
    return a + b;
  }

  int sub(int a, int b){
    return a - b;
  }

  int mul(int a, int b){
    return a * b;
  }



}