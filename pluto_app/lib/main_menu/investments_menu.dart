import 'package:flutter/material.dart';
import 'package:pluto_app/configurations/app_bar.dart';

class investments_menu extends StatefulWidget {
  const investments_menu({super.key});

  @override
  State<investments_menu> createState() => _investments_menuState();
}

class _investments_menuState extends State<investments_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarSample(title: 'Investments'),
      ),
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
