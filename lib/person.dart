class Person {
  String _name;
  double _weight;
  double _height;

  Person(this._name, this._height, this._weight);

  String get name => _name;
  double get weight => _weight;
  double get height => _height;

  void setName(String name) {
    try {
      if (name.isEmpty) {
        throw Exception("O nome não pode ser vazio");
      }

      _name = name;
    } catch (e) {
      print(e);
    }
  }

  void setWeight(double weight) {
    try {
      if (weight <= 0) {
        throw Exception("O peso não pode ser menor ou igual que zero");
      }

      _weight = weight;
    } catch (e) {
      print(e);
    }
  }

  void setHeight(double height) {
    try {
      if (weight <= 0) {
        throw Exception("A altura não pode ser menor ou igual que zero");
      }

      _height = height;
    } catch (e) {
      print(e);
    }
  }
}