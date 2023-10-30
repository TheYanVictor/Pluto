import 'package:flutter/material.dart';

class income_menu extends StatefulWidget {
  const income_menu({super.key});

  @override
  State<income_menu> createState() => _income_menuState();
}

class _income_menuState extends State<income_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Income Menu',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}