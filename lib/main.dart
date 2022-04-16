import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smarthomebackendlaravel/views/bottompage.dart';
import 'package:smarthomebackendlaravel/views/loginpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email = prefs.getString('email');
  print(email);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? email;
    return MaterialApp(
      title: 'Smart Home',
      // initialRoute: '/',
      // routes: {

      // },
      home: email == null ? const Login() : const BottomPage(),
    );
  }
}
