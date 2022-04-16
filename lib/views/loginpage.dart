import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:smarthomebackendlaravel/views/bottompage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //deklarasi form
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  login() async {
    setState(() {
      _usernameController.text;
      _passwordController.text;
    });
    var url =
        "https://smarthomebackend.herokuapp.com/api/v1/smartbackend/login";
    final response = await http.post(Uri.parse(url), headers: {
      "Accept": "application/json",
    }, body: {
      "email": _usernameController.text,
      "password": _passwordController.text,
    });
    var res = json.decode(response.body);
    if (response.statusCode == 200) {
       Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomPage(),
          ),
        );
    } else {
      print(
        "email : ${_usernameController.text} password : ${_passwordController.text}",
      );
      return AlertDialog(
        title: const Text("Login Failed"),
        content: const Text("Please check your username and password"),
        actions: <Widget>[
          TextButton(
            child: Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/Maadhav/flutter-login-ui-concept/master/Assets/image1.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 270),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Container(
                      color: Color(0xfff5f5f5),
                      child: TextField(
                        controller: _usernameController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          labelStyle: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xfff5f5f5),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          labelStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: () {
                        login();
                        print('Login');
                      }, //since this is only a UI app
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xffff2d55),
                      elevation: 0,
                      minWidth: 400,
                      height: 50,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
