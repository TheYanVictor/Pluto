import 'package:flutter/material.dart';

class AppBarSample extends StatelessWidget {
  final String title;

  AppBarSample({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 30),
      ),
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 255, 213, 61),
      leading: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.transparent),
        ),
        child: Icon(
          Icons.menu,
          size: 50,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'main_menu');
        },
      ),
      actions: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.transparent),
          ),
          child: Icon(
            Icons.settings,
            size: 50,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'menu_config');
          },
        ),
      ],
    );
  }
}
