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
      child: Column(
        children: <Widget>[
          HeaderWidget(),
          TopMenu(),
          Expanded(
            child: Container(
              width: _size.width,
              // height: _size.height * 0.7,
              // color: white,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Content'),
                ),
              ),
            ),
          ),

          // CardSwiper(screenSize: _size),

          Container(
              width: _size.width,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.timeline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.timer),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ],
                ),
              )),
          //
          //
        ],
      ),
    );
  }
}
