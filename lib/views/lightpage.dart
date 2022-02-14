import 'package:flutter/material.dart';

class LightScreen extends StatefulWidget {
  const LightScreen({Key? key}) : super(key: key);

  @override
  _LightScreenState createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  Color navBarColor = const Color(0xFF669D89);
  static const navBarTextColor = const Color(0xFFfef4d4);
  Color subTitleColor = const Color(0xFFdec978);
  Color SubtitleDashed = const Color(0xFFcbb663);
  Color infoCardBg = const Color(0xFFfdebbd);
  Color infoCardDashed = const Color(0xFFd6d5be);
  Color pink = const Color(0xFFf27c7e);
  Color mic_btn = const Color(0xFFe0a81c);
  Color mic_btn_dashed = const Color(0xFFaa7d0d);
  Color mic_btn_shadow = const Color(0xFFefca74);
  Color disabled = const Color(0xFF987654);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/body-pattern.jpg"),
          fit: BoxFit.none,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}
