import 'package:flutter/material.dart';

class log_in_page extends StatefulWidget {
  const log_in_page({super.key});

  @override
  State<log_in_page> createState() => _log_in_pageState();
}

class _log_in_pageState extends State<log_in_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          color: Colors.amberAccent,
          child: OutlinedButton(
            child: Text(
              'Log In',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'main_menu');
            },
          ),
        ),
      ),
    );
  }
}
