import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/menu_state.dart';
import '../models/menu_model.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final menuState = Provider.of<MenuState>(context);
    // final selectedMenu = Provider.of<MenuState>(context).selectedMenuId;

    return Consumer<MenuState>(
      builder: (context, menuState, _) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[],
        ),
      ),
    );
  }
}
