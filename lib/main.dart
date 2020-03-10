import 'package:flutter/material.dart';
import 'blocs/bloc_theme.dart';
import 'config/app_theme.dart';
import 'config/routes.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: themeBloc.themeEnabled,
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Arun App',
          theme: getThemeByType(snapshot.data),
          initialRoute: '/',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: generateRoutes,
          home: Home(),
        );
      },
    );
  }
}
