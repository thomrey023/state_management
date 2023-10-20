import 'package:flutter/material.dart';

class InputOutput extends ChangeNotifier {
  int _input = 0;

  int get input => _input;

  void increment() {
    _input++;
    notifyListeners();
  }

  void decrement() {
    _input--;
    notifyListeners();
  }
}
