import 'package:flutter/material.dart';
import 'package:pluto_app/configurations/app_bar.dart';

class Banks_Menu extends StatefulWidget {
  @override
  _Banks_MenuState createState() => _Banks_MenuState();
}

class _Banks_MenuState extends State<Banks_Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarSample(title: 'Banks'),
      ),
      //
      //Body
      //
      body: Row(
        children: [
          //Bank 1
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //Bank 1
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  //Bank 2
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  //Bank 3
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  //Bank 4
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  //Bank 5
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  //Bank 6
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  //Bank 7
                  Container(
                    height: 80,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
