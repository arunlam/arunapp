import 'package:flutter/material.dart';

class MenuState extends ChangeNotifier {
  int selectedMenuId = 1;

  void updateSelectedId(int index) {
    this.selectedMenuId = index;
    notifyListeners();
  }
}
