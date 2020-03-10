import 'package:flutter/material.dart';

enum Themes { light, dark }

ThemeData getThemeByType(Themes type) {
  switch (type) {
    case Themes.dark:
      return ThemeData(
        brightness: Brightness.dark,
      );
    default:
      return ThemeData(
        brightness: Brightness.light,
      );
  }
}

class ThemeProvider with ChangeNotifier {
  bool isDark;

  ThemeProvider({this.isDark});

  ThemeData get getThemeData =>
      isDark ? getThemeByType(Themes.dark) : getThemeByType(Themes.light);

  set setThemeData(bool val) {
    isDark = val ? true : false;
    notifyListeners();
  }
}
