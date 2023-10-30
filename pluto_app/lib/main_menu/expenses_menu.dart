import 'package:flutter/material.dart';

class expenses_menu extends StatefulWidget {
  const expenses_menu({super.key});

  @override
  State<expenses_menu> createState() => _expenses_menuState();
}

class _expenses_menuState extends State<expenses_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Expenses Menu',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}