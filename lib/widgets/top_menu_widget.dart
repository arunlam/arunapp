import 'package:arunapp/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/menu_state.dart';
import '../models/menu_model.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MenuState>(
      create: (_) => MenuState(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            for (final menu in Menus.menuList)
              MenuItem(
                menu: menu,
              )
          ],
        ),
      ),
    );
  }
}
