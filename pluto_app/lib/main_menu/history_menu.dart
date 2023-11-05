import 'package:flutter/material.dart';

class history_menu extends StatefulWidget {
  const history_menu({super.key});

  @override
  State<history_menu> createState() => _history_menuState();
}

class _history_menuState extends State<history_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'History menu',
        style: TextStyle(fontSize: 50),
      ),
    ));
  }
}
