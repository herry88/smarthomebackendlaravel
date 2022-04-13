import 'package:flutter/material.dart';
import 'package:smarthomebackendlaravel/views/homepage.dart';
import 'package:smarthomebackendlaravel/views/lightpage.dart';
import 'package:smarthomebackendlaravel/views/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/lights': (context) => const LightScreen(),
      },
    );
  }
}
