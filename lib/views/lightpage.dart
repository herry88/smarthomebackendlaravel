import 'package:flutter/material.dart';
import 'package:smarthomebackendlaravel/controller/lightcontroller.dart';

import 'lightdetailpage.dart';

class LightScreen extends StatefulWidget {
  const LightScreen({Key? key}) : super(key: key);

  @override
  _LightScreenState createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  LightController lightController = LightController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Light'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: FutureBuilder<List>(
        future: lightController.makeRequest(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? LightList(
                  list: snapshot.data ?? [],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class LightList extends StatelessWidget {
  List list;
  LightList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LightDetail(),
              ),
            );
          },
          child: Card(
            child: ListTile(
              title: Text(list[index]['nm_lamp']),
              trailing: Switch(
                value: list[index]['status'] == 'on' ? true : false,
                onChanged: (value) {
                  // lightController.changeStatus(list![index]['id'], value);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
