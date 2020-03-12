import 'package:arunapp/models/menu_model.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../config/app_theme.dart';
import '../config/menu_state.dart';
import '../widgets/card_swiper.dart';
import '../widgets/header.dart';
import '../widgets/top_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
    Size _size = MediaQuery.of(context).size;

    return SafeArea(
      child: ChangeNotifierProvider<MenuState>(
        create: (_) => MenuState(),
        child: Column(
          children: <Widget>[
            HeaderWidget(),
            TopMenu(),
            CardSwiper(
              size: _size,
              scrollDirection: Axis.vertical,
              layout: SwiperLayout.STACK,
              viewpointFraction: 0.8,
              scale: 0.9,
              padding: 16.0,
              heightFraction: 0.6,
              color: green,
              list: Menus.menuList,
            ),
          ],
        ),
      ),
    );
  }
}
