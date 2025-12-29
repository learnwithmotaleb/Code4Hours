class StudentBD {
  String? _name;
  String? _dream;
  String? _location;



  // StudentBD(this._name, this._dream);

  String? get getName => _name;
  set setName(String name) {
    _name = name;
  }



  String? get getDream => _dream;
  set setDrem(String dream) {
    _dream = dream;
  }

  String? get getLocation => _location;
  set setLocation(String location){
    _location = location;
  }



  void display() {
    print("Name: ${_name}");
    print("Dream: ${_dream}");
  }
}
