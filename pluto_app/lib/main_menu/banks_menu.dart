import 'package:flutter/material.dart';
import 'package:pluto_app/configurations/app_bar.dart';

class Banks_Menu extends StatefulWidget {
  @override
  _Banks_MenuState createState() => _Banks_MenuState();
}

class _Banks_MenuState extends State<Banks_Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarSample(title: 'Banks'),
      ),
      body: Center(
        child: Text(
          'Banks Menu',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
