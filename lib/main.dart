import 'package:flutter/material.dart';
import 'package:smarthomebackendlaravel/views/homepage.dart';
import 'package:smarthomebackendlaravel/views/lightpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/lights': (context) => LightScreen(),
      },
    );
  }
}
