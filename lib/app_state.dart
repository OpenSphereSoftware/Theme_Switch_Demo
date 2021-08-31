import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  bool isDarkModeOn = false;

  void updateTheme(bool isDarkModeOn) {
    this.isDarkModeOn = isDarkModeOn;
    notifyListeners();
  }

  void toggleTheme() {
    // ignore: unnecessary_this
    this.isDarkModeOn = !this.isDarkModeOn;
    notifyListeners();
  }
}
