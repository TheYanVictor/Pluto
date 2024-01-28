// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class main_menu extends StatefulWidget {
  const main_menu({super.key});

  @override
  State<main_menu> createState() => _main_menuState();
}

class _main_menuState extends State<main_menu> {
  //Color for icons
  final iconsColor = Colors.green[700];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        //Middle title
        title: Text(
          'Main Menu',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 100,
        centerTitle: true,

        backgroundColor: iconsColor,
        //
        //Logout button
        //
        leading: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.transparent),
          ),
          child: Icon(
            Icons.logout,
            size: 50,
            color: Colors.black54,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'log_in');
          },
        ),
        //
        //Settings button
        //
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
      ),
//----------------------------------Main Column----------------------------------
      body: Center(
        //Main column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Search bar
            Container(
              width: 300,
              height: 60,
              alignment: Alignment.bottomCenter,
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: '  Search',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            //First 2 buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacer(),
                //
                //Income Button
                //
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'income_menu');
                      },
                      child: Icon(
                        Icons.attach_money,
                        size: 60,
                        color: iconsColor,
                      ),
                    ),
                    //Space
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Income',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                //
                //Expenses Button
                //
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'expenses_menu');
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        size: 60,
                        color: iconsColor,
                      ),
                    ),
                    //Space
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Expenses',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Spacer(),
              ],
            ),
            //
            //-----------------------------Second 2 buttons-----------------------------//
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacer(),
                //Investments Button
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'investments_menu');
                      },
                      child: Icon(
                        Icons.money,
                        size: 60,
                        color: iconsColor,
                      ),
                    ),
                    //Space
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Investments',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                //
                //History Button
                //
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'history_menu');
                      },
                      child: Icon(
                        Icons.history,
                        size: 60,
                        color: iconsColor,
                      ),
                    ),
                    //Space
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
            //
            //-----------------------------Third 2 buttons-----------------------------//
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacer(),
                //
                //Banks Button
                //
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'banks_menu');
                      },
                      child: Icon(
                        Icons.account_balance,
                        size: 60,
                        color: iconsColor,
                      ),
                    ),
                    //Space
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Banks',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                //
                //Something Button
                //
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'expenses_menu');
                      },
                      child: Icon(
                        Icons.money_off_rounded,
                        size: 60,
                        color: iconsColor,
                      ),
                    ),
                    //Space
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Something',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
