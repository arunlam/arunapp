import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../blocs/bloc_theme.dart';
import '../config/app_theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    themeBloc.changeTheme(Themes.dark);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_dashboard(context)],
      ),
    );
  }

  Widget _dashboard(context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDark;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Home'),
              Switch(
                  value: isDark,
                  onChanged: (val) {
                    themeProvider.setThemeData = val;
                    // isDark = !isDark;
                  })
            ],
          )
        ],
      ),
    );
  }
}
