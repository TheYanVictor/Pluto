import 'package:flutter/material.dart';

class Banks_Menu extends StatefulWidget {
  @override
  _Banks_MenuState createState() => _Banks_MenuState();
}

class _Banks_MenuState extends State<Banks_Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banks Menu'),
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
