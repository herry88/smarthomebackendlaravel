import 'package:flutter/material.dart';

class LightDetail extends StatefulWidget {
  List? list;
  int index;
  LightDetail({
    Key? key,
    this.list,
    required this.index,
  }) : super(key: key);

  @override
  _LightDetailState createState() => _LightDetailState();
}

class _LightDetailState extends State<LightDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.list![widget.index]['nm_lamp'].toString(),
        ),
      ),
      body: Center(),
    );
  }
}
