import 'package:flutter/material.dart';

class investments_menu extends StatefulWidget {
  const investments_menu({super.key});

  @override
  State<investments_menu> createState() => _investments_menuState();
}

class _investments_menuState extends State<investments_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Investments Menu',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
