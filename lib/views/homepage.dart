import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color navBarColor = const Color(0xFF669D89);
  static const navBarTextColor = Color(0xFFfef4d4);
  Color subTitleColor = const Color(0xFFdec978);
  Color SubtitleDashed = const Color(0xFFcbb663);
  Color infoCardBg = const Color(0xFFfdebbd);
  Color infoCardDashed = const Color(0xFFd6d5be);
  Color pink = const Color(0xFFf27c7e);
  Color mic_btn = const Color(0xFFe0a81c);
  Color mic_btn_dashed = const Color(0xFFaa7d0d);
  Color mic_btn_shadow = const Color(0xFFefca74);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("asset/images/body-pattern.jpg"),
        fit: BoxFit.none,
        repeat: ImageRepeat.repeat,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:
              const Text('SmartHome', style: TextStyle(color: navBarTextColor)),
          elevation: 0,
          backgroundColor: navBarColor,
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: subTitleColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width,
                        child: DottedBorder(
                          color: SubtitleDashed,
                          strokeWidth: 2,
                          strokeCap: StrokeCap.butt,
                          dashPattern: [5, 3],
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Image.asset(
                                  'asset/images/home.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 5),
                                child: Text('Flutter Apps',
                                    style: TextStyle(
                                        color: navBarColor, fontSize: 30)),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.only(right: 5, top: 0),
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'asset/images/logo.png',
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Stack(
                            children: [
                              Container(
                                color: infoCardBg,
                                width: 170,
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: DottedBorder(
                                      color: infoCardDashed,
                                      strokeWidth: 1,
                                      strokeCap: StrokeCap.butt,
                                      dashPattern: [5, 3],
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topRight,
                                                  width: 140,
                                                  height: 40,
                                                  child: Text(
                                                    'Lampu',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: pink),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  width: 110,
                                                  height: 90,
                                                  // child: FutureBuilder<Curtain>(
                                                  //     future: livingRoom.makeRequest(),
                                                  //     builder: (context, snapshot) {
                                                  //     if (snapshot.hasData) {
                                                  //       return Text(
                                                  //         snapshot.data.temperature + '℃',
                                                  //         style: TextStyle(
                                                  //             fontSize: 35,
                                                  //             color: navBarColor),
                                                  //       );
                                                  //     }
                                                  //     else if (snapshot.hasError) {
                                                  //       return Text("${snapshot.error}");
                                                  //     }
                                                  //     return CircularProgressIndicator(
                                                  //         valueColor: new AlwaysStoppedAnimation<Color>(navBarColor)
                                                  //     );
                                                  //     }

                                                  // )
                                                ),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  width: 40,
                                                  height: 90,
                                                  child: Image.asset(
                                                    'asset/images/derece.png',
                                                    height: 50,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Stack(
                            children: [
                              Container(
                                color: infoCardBg,
                                width: 170,
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: DottedBorder(
                                      color: infoCardDashed,
                                      strokeWidth: 1,
                                      strokeCap: StrokeCap.butt,
                                      dashPattern: [5, 3],
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topRight,
                                                  width: 140,
                                                  height: 40,
                                                  child: Text(
                                                    'Pompa',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: pink),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  width: 110,
                                                  height: 90,
                                                  // child: FutureBuilder<Curtain>(
                                                  //     future: livingRoom.makeRequest(),
                                                  //     builder: (context, snapshot) {
                                                  //       if (snapshot.hasData) {
                                                  //         return Text(
                                                  //             snapshot.data.humidity + '%',
                                                  //           style: TextStyle(
                                                  //               fontSize: 35,
                                                  //               color: navBarColor),
                                                  //         );
                                                  //       }
                                                  //       else if (snapshot.hasError) {
                                                  //         return Text("${snapshot.error}");
                                                  //       }
                                                  //       return CircularProgressIndicator(
                                                  //           valueColor: new AlwaysStoppedAnimation<Color>(navBarColor)
                                                  //       );
                                                  //     }

                                                  // ),
                                                ),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  width: 40,
                                                  height: 90,
                                                  child: Image.asset(
                                                    'asset/images/nem.png',
                                                    height: 50,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 60, left: 10),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          fillColor: mic_btn_shadow,
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.laptop_mac,
                                size: 90.0,
                                color: Colors.white,
                              )),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: RawMaterialButton(
                          // onPressed: getRecorderFn(),
                          onPressed: () {},
                          elevation: 0,
                          fillColor: mic_btn,
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: DottedDecoration(
                                shape: Shape.circle,
                                dash: <int>[10, 5],
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.ac_unit,
                                // _mRecorder.isRecording  ? Icons.mic_off : Icons.mic,
                                size: 90.0,
                                color: Colors.white,
                              )),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: Text('SmartHome',
                        style: TextStyle(color: navBarColor, fontSize: 30)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 0,
                              fillColor: mic_btn_shadow,
                              child: Container(
                                width: 110,
                                height: 115,
                              ),
                              padding: EdgeInsets.all(15.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/curtains');
                              },
                              elevation: 0,
                              fillColor: infoCardBg,
                              child: Container(
                                width: 110,
                                height: 115,
                                decoration: DottedDecoration(
                                  shape: Shape.box,
                                  dash: <int>[10, 5],
                                  color: infoCardDashed,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Window',
                                      textAlign: TextAlign.center,
                                      style:
                                          TextStyle(fontSize: 20, color: pink),
                                    ),
                                    Image.asset(
                                      'asset/images/perde_yesil.png',
                                      height: 70,
                                    )
                                  ],
                                ),
                              ),
                              padding: EdgeInsets.all(15.0),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: RawMaterialButton(
                              onPressed: () {},
                              elevation: 0,
                              fillColor: mic_btn_shadow,
                              child: Container(
                                width: 110,
                                height: 115,
                              ),
                              padding: EdgeInsets.all(15.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/lights');
                              },
                              elevation: 0,
                              fillColor: infoCardBg,
                              child: Container(
                                width: 110,
                                height: 115,
                                decoration: DottedDecoration(
                                  shape: Shape.box,
                                  dash: <int>[10, 5],
                                  color: infoCardDashed,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Show',
                                      textAlign: TextAlign.center,
                                      style:
                                          TextStyle(fontSize: 20, color: pink),
                                    ),
                                    Image.asset(
                                      'asset/images/isiklar.png',
                                      height: 70,
                                    )
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(15.0),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
