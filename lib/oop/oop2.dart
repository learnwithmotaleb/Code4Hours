void main(){



  Motaleb motaleb = new Motaleb();
  motaleb.name = "Motaleb";
  motaleb.dream = "Flutter Developer";
  motaleb.age = "24";
  motaleb.isStudent = false;
  motaleb.display();


  Motaleb sonia = new Motaleb();
  sonia.name = "Sonia";
  sonia.dream = "Flutter UI/UX";
  sonia.age = "24";
  sonia.isStudent = true;
  sonia.display();




}

class Motaleb{
  String? name;
  String? dream;
  String? age;
  bool? isStudent;

  void display(){
    print("My name is $name");
    print("My Dream is $dream");
    print("My Age is $age");
    print("My Age is $isStudent");
    print("\n");

  }
}