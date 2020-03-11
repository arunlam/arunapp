import 'dart:ui';

import 'package:flutter/material.dart';
import '../helpers/navigation.dart';
import '../pages/home.dart';

Route generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case NavigationConstrants.HOME:
      return buildRoute(settings, Home());
    default:
      return buildRoute(
        settings,
        Scaffold(
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                  fit: BoxFit.cover),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.withOpacity(0.1),
                  child: Text(
                    "Error loading",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return new MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}
