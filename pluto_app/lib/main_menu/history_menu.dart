import 'package:flutter/material.dart';
import 'package:pluto_app/configurations/app_bar.dart';

class history_menu extends StatefulWidget {
  const history_menu({super.key});

  @override
  State<history_menu> createState() => _history_menuState();
}

class _history_menuState extends State<history_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Appbar
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBarSample(title: 'History'),
        ),
        body: Center(
          child: Text(
            'History menu',
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}
