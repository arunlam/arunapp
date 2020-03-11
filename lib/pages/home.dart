import 'package:arunapp/widgets/header.dart';
import 'package:flutter/material.dart';

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
      child: Column(
        children: <Widget>[
          HeaderWidget(),
        ],
      ),
    );
  }
}
