void main() {
  // FlutterApp flutterApp = FlutterApp("Motaleb", "Flutter Developer");
  // flutterApp.display();

  List<FlutterApp> list = [
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),
  FlutterApp("Motaleb", "Flutter Developer"),

  ];
  
  list.forEach((element){
    print(element.name);
    print(element.position);
  });

  


}

class FlutterApp {
  String? name;
  String? position;

  FlutterApp(String this.name, String this.position);

  void display() {
    print("Name: $name");
    print("Position: $position");
  }
}
