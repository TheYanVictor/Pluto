import 'package:flutter/material.dart';

class AppBarSample extends StatelessWidget {
  final String title;
  //Color for icons
  final iconsColor = Colors.green[700];

  AppBarSample({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: iconsColor,
      leading: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.transparent),
        ),
        child: Icon(
          Icons.menu,
          size: 50,
          color: Colors.black54,
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
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'menu_config');
          },
        ),
      ],
    );
  }
}
