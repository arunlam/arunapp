import 'package:flutter/material.dart';
import '../helpers/navigation.dart';
import '../pages/home.dart';

Route generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case NavigationConstrants.HOME:
      return buildRoute(settings, Home());
    default:
      return buildRoute(settings, Home());
  }
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return new MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}
