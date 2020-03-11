import 'package:arunapp/config/menu_state.dart';
import 'package:arunapp/widgets/header.dart';
import 'package:arunapp/widgets/top_menu_widget.dart';
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
    return SafeArea(
      child: ChangeNotifierProvider<MenuState>(
        create: (_) => MenuState(),
        child: Column(
          children: <Widget>[
            HeaderWidget(),
            TopMenu(),
          ],
        ),
      ),
    );
  }
}
