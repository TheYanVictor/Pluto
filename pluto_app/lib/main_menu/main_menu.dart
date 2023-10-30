import 'package:flutter/material.dart';

class main_menu extends StatefulWidget {
  const main_menu({super.key});

  @override
  State<main_menu> createState() => _main_menuState();
}

class _main_menuState extends State<main_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Main Menu',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
