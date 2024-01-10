import 'package:flutter/material.dart';
import 'package:pluto_app/configurations/app_bar.dart';

class income_menu extends StatefulWidget {
  const income_menu({super.key});

  @override
  State<income_menu> createState() => _income_menuState();
}

class _income_menuState extends State<income_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarSample(title: 'Income'),
      ),
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
