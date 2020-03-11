import 'package:arunapp/helpers/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/app_theme.dart';
import 'config/routes.dart';
// import 'pages/home.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(isDark: false),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krom App',
      theme: Provider.of<ThemeProvider>(context).getThemeData,
      initialRoute: NavigationConstrants.HOME,
      onGenerateRoute: generateRoutes,
    );
  }
}
