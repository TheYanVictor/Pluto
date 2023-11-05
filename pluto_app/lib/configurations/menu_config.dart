import 'package:flutter/material.dart';

class menu_config extends StatefulWidget {
  const menu_config({super.key});

  @override
  State<menu_config> createState() => _menu_configState();
}

class _menu_configState extends State<menu_config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Menu Config',
        style: TextStyle(fontSize: 60),
      ),
    ));
  }
}
