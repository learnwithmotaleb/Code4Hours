void main(){


  Student student1 = new Student();

  student1.name = "Abdul Motaleb";
  student1.gender = "Male";
  student1.age = 24;
  student1.grate = "3.5";
  student1.display();
  student1.updateDisplay("3.50");


}

class Student{

  String?  name;
  int? age;
  String? gender;
  String? grate;


  void display(){

    print("name: $name");
    print("Age: $age");
    print("Gender: $gender");
    print("Grate: $grate");
  }

  void updateDisplay(String newGrate){

    grate = newGrate;
    print("Update to new Grate: $newGrate for $name");


  }
}

