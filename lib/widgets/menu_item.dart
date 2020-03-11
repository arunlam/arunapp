import 'package:arunapp/config/app_theme.dart';
import 'package:arunapp/config/menu_state.dart';
import 'package:arunapp/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuItem extends StatelessWidget {
  final Menus menu;

  const MenuItem({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuState = Provider.of<MenuState>(context);
    final isSelected = menuState.selectedMenuId == menu.id;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          menuState.updateSelectedId(menu.id);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                menu.title,
                style: isSelected
                    ? menuStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: green,
                      )
                    : menuStyle.copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            if (isSelected)
              ClipOval(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: green,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
