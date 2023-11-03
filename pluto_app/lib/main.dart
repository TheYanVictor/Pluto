import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:pluto_app/log_in/log_in_page.dart';
import 'package:pluto_app/main_menu/expenses_menu.dart';
import 'package:pluto_app/main_menu/incomes_menu.dart';
import 'package:pluto_app/main_menu/investments_menu.dart';
import 'package:pluto_app/main_menu/main_menu.dart';
import 'package:pluto_app/statistics/statistics_menu.dart';

//Change scroll settings
class MyCustomBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: true,
        scrollBehavior: MyCustomBehavior(),

        //Navigation routes
        initialRoute: 'log_in',

        routes: {
          //Log in page
          'log_in': (context) => log_in_page(),

          //Main menu
          'main_menu': (context) => main_menu(),

          //Main menu direct routes
          'incomes_menu': (context) => income_menu(),
          'expenses_menu': (context) => expenses_menu(),
          'investments_menu': (context) => investments_menu(),

          //Sub menus
          'statistics_menu': (context) => statistics_menu(),
        },
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
