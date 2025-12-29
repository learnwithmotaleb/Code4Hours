void main(){

  C c = C();

  c.display();




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