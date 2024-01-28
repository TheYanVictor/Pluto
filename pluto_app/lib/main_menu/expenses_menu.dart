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

  //List of items for the dropdown button
  List<DropdownMenuItem<String>> timeStamp = [
    DropdownMenuItem(
      child: Text('Hoje'),
      value: 'Item 1',
    ),
    DropdownMenuItem(
      child: Text('7 dias'),
      value: 'Item 2',
    ),
    DropdownMenuItem(
      child: Text('30 dias'),
      value: 'Item 3',
    ),
  ];

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This provides us total height and width of our screen
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarSample(title: 'Expenses'),
      ),

      //
      //---------------------------------BODY---------------------------------
      //
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //Area for graphs
            Container(
              width: size.width,
              height: size.height * 0.2,
              child: Image.network(
                'https://raw.githubusercontent.com/TheYanVictor/Pluto/main/pluto_app/assets/images/graficos_aleatorios.jpg',
                fit: BoxFit.contain,
              ),
            ),
            //Area for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Button for adding expenses
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Add expense'),
                ),

                //Button for adding expenses
                DropdownButton(
                    hint: Text('Tempo'),
                    items: timeStamp,
                    onChanged: (value) {}),
              ],
            ),
            //Space
            SizedBox(
              height: 20,
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
