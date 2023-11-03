import 'package:flutter/material.dart';

class main_menu extends StatefulWidget {
  const main_menu({super.key});

  @override
  State<main_menu> createState() => _main_menuState();
}

class _main_menuState extends State<main_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacer(),
                //Income Button
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'incomes_menu');
                  },
                  child: Icon(
                    Icons.money,
                    size: 60,
                  ),
                ),
                Spacer(),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'expenses_menu');
                  },
                  child: Icon(
                    Icons.money_off_rounded,
                    size: 60,
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.amberAccent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
