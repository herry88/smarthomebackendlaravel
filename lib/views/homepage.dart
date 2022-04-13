import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //on button function
          ElevatedButton(
            onPressed: () {
              //living room
              Navigator.of(context).pushNamed('/lights');
            },
            child: const Text('Lampu'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 0, 37, 245),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 50, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 30),
          
        ],
      ),
    );
  }
}
