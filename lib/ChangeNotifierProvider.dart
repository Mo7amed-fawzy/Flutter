import 'package:flutter/material.dart';
//  استدعاء مكتبة provider بستعمل منها ChangeNotifierProvider

class MyAppProvider extends ChangeNotifier {
  double height = 171;
  int age = 21;
  int weight = 65;
  bool isMale = true;
  bool iFemal = true;

  void updateIsMale(bool newValue) {
    isMale = true;
    iFemal = false;
    notifyListeners();
  }

  void updateIsFemale(bool newValue) {
    isMale = false;
    iFemal = true;
    notifyListeners();
  }

  void updateHeight(double newValue) {
    height = newValue;
    notifyListeners();
  }

  void updateWeight(int newValue) {
    weight = newValue;
    notifyListeners();
  }

  void updateAge(int newValue) {
    age = newValue;
    notifyListeners();
  }
}
