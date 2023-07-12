
import 'package:flutter/material.dart';

class ChangeName with ChangeNotifier {
  String _name = '';

  void changeName(String newName) {
    _name = newName;
    notifyListeners();
  }

  String get name => _name;

}