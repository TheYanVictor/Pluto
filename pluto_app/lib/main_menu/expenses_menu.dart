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
      //Appbar
      appBar: AppBar(
        //Middle title
        title: Text(
          'Expenses',
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 100,
        centerTitle: true,

        backgroundColor: Color.fromARGB(255, 255, 213, 61),
        //Logout button
        leading: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.transparent),
          ),
          child: Icon(
            Icons.logout,
            size: 50,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'log_in');
          },
        ),

        //Settings button
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
      ),

      //Main column
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Text(
                'Expenses Menu',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
