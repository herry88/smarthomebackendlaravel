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
              print('living room');
            },
            child: const Text('Lampu Modul'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[700],
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              //living room
              print('Guest room');
            },
            child: const Text('Pompa Module'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[700],
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
