import 'package:practices/oop/test_encapsulation.dart';


void main(){

  StudentBD student = StudentBD();
  student.setName= "hello";
  student.setDrem= "Google Hack!";
  student.setLocation = "Location Mohakali";

  student.display();



  print(student.getName);
  print(student.getDream);
  print(student.getLocation);



}

