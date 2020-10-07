class Memoria {
  String _value = "0";

  void applyCommand(String comand) {
    if (comand == "AC") {
      _allclear();
    } else {
      _value += comand;
    }
  }

  _allclear() {
    _value = "0";
  }

  String get value {
    return _value;
  }
}
