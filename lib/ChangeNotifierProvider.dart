import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; //  استدعاء مكتبة provider بستعمل منها ChangeNotifierProvider

class MyAppProvider extends ChangeNotifier {
  double height = 171;
  int age = 21;
  int weight = 65;
  bool isMale = true;
  bool iFemal = true;

  void updateIsMale(bool newValue) {
    bool isMale = true;
    bool iFemal = false;
    notifyListeners();
  }

  void updateIsFemale(bool newValue) {
    bool isMale = false;
    bool iFemal = true;
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
