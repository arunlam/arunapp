import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isDark;
  ThemeProvider({this.isDark});

  ThemeData get getThemeData =>
      isDark ? getThemeByType(Themes.dark) : getThemeByType(Themes.light);

  set setThemeData(bool val) {
    isDark = val;
    notifyListeners();
  }
}

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

/* CONSTRAINT */
/* COLORS */
const white = Colors.white;
const white54 = Colors.white54;
const black = Colors.black;
const black54 = Colors.black54;
const grey = Colors.grey;
const red = Colors.red;
const blue = Colors.blue;
const yellow = Colors.yellow;
const pink = Colors.pink;
const green = Colors.green;

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

/* COLOR GRADIENT */
LinearGradient appGradient =
    LinearGradient(colors: [HexColor('FC4A1F'), HexColor('AF1055')]);

/* TEXT STYLE */

const String fontFamily = 'Montserrat';

TextStyle headText = TextStyle(
  fontSize: 24,
  fontFamily: fontFamily,
  fontWeight: FontWeight.bold,
  // fontStyle: FontStyle.italic,
);

TextStyle menuStyle = TextStyle(
  fontSize: 14,
  fontFamily: fontFamily,
  // fontWeight: FontWeight.bold,
  // fontStyle: FontStyle.italic,
);
