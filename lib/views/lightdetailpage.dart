import 'package:flutter/material.dart';
import 'package:smarthomebackendlaravel/controller/lightcontroller.dart';
import 'package:smarthomebackendlaravel/views/bottompage.dart';
import 'package:smarthomebackendlaravel/views/lightpage.dart';
import 'package:smarthomebackendlaravel/views/loginpage.dart';

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
  LightController lightController = LightController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          widget.list![widget.index]['nm_lamp'].toString(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Text(
                      widget.list![widget.index]['nm_lamp'].toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    widgetIcon(),
                  ],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      child: Text('ON'),
                      onPressed: () {
                        var on = 'on';
                        lightController.changeStatus(
                          widget.list![widget.index]['id'],
                          on.toString(),
                        );
                        // Navigator.pop(context);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BottomPage(),
                          ),
                        );
                        // ledState(true, 24);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange[700],
                          padding: EdgeInsets.symmetric(
                              horizontal: 33, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal)),
                    ),
                    ElevatedButton(
                      child: Text('OFF'),
                      onPressed: () {
                        var off = 'off';
                        lightController.changeStatus(
                          widget.list![widget.index]['id'],
                          off.toString(),
                        );
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BottomPage(),
                          ),
                        ); // ledState(false, 24);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget widgetIcon() {
    if (widget.list![widget.index]['status'] == 'on') {
      return const Icon(
        Icons.lightbulb,
        color: Colors.green,
        size: 80,
      );
    } else {
      return const Icon(
        Icons.lightbulb_outline,
        color: Colors.black,
        size: 70,
      );
    }
  }
}
