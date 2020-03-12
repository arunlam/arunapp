import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'rounded_widget.dart';
import '../config/app_theme.dart';

final String appName = 'Sportie Voraman';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            appName.toUpperCase(),
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: RoundedUserWidget(
              imgSize: 36,
              imgPath: 'assets/default.png',
            ),
            onTap: () {
              //Testing dark mode
              setState(() {
                themeProvider.setThemeData = !isDark;
                isDark = !isDark;
              });
            },
          ),
        ),
      ],
    );
  }
}
