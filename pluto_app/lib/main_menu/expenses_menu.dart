// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pluto_app/configurations/app_bar.dart';

class expenses_menu extends StatefulWidget {
  const expenses_menu({super.key});

  @override
  State<expenses_menu> createState() => _expenses_menuState();
}

class _expenses_menuState extends State<expenses_menu> {
  @override
  //List of colors for the expenses
  List<int> colorCodes = [600, 500, 100, 200, 300, 400, 500, 600, 700, 800];
  List<String> entries = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This provides us total height and width of our screen
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarSample(title: 'Expenses'),
      ),

      //Main column
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Area for graphs
            Container(
              width: size.width,
              height: size.height * 0.2,
              child: Image.asset(
                'assets/images/graficos_aleatorios.jpg',
                fit: BoxFit.contain,
              ),
            ),
            //Area for buttons
            Container(
              width: size.width,
              height: size.height * 0.15,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Buttons',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            //Area for expenses list
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.amber[colorCodes[index]],
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      child: Center(child: Text('Entry ${entries[index]}')),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
