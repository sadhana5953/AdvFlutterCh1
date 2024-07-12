import 'package:flutter/material.dart';

class themeProvider extends ChangeNotifier {
  int count = 0;
  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  void addition() {
    count++;
    notifyListeners();
  }
}
