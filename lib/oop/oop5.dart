void main(){

  // Student student = Student(email: 'example@gmail.com' );
  // student.display();

  List<Student> data = [
  Student(name: "Munna", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Motaleb", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Munna", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Abdul Motaleb", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Sonia", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Munna", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Motaleb", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Munna", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Munna", gender: "Male", email: 'example@gmail.com' ),
  Student(name: "Munna", gender: "Male", email: 'example@gmail.com' ),
  ];

  data.forEach((element){
    print("Name: ${element.name}, \nGender: ${element.gender}, \nE-mail: ${element.email}");
  });



}

class Student{
  String? name;
  String? gender;
  String? email;

  Student({this.name = '', this.gender, required this.email});

  void display(){
    print("name: $name");
    print("Gender: $gender");
    print("E-mail: $email");
  }


}