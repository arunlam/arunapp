import 'package:flutter/material.dart';
import '../config/app_theme.dart';

class Menus {
  final String title;
  final int id;
  final String imgPath;
  final Color color;

  Menus({this.title, this.id, this.imgPath = '', this.color = Colors.green});

  static List<Menus> menuList = [
    Menus(title: 'Dashboard', id: 1, color: green),
    Menus(title: 'Schedule', id: 2, color: blue),
    Menus(title: 'Sports', id: 3, color: yellow),
    Menus(title: 'Arena', id: 4, color: pink),
    Menus(title: 'My Points', id: 5, color: red[200]),
  ];
}
