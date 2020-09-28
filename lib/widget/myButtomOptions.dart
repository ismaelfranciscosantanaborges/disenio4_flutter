import 'package:flutter/material.dart';

import '../colors.dart' as myColor;

class MyButtomOptions extends StatelessWidget {
  const MyButtomOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _getButtomOptions(Icons.phone, Colors.green[300]),
          _getButtomOptions(Icons.camera_alt, Colors.pinkAccent),
          _getButtomOptions(Icons.message, myColor.kAppBarLight2),
        ],
      ),
    );
  }

  Widget _getButtomOptions(IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(0),
      width: 55,
      child: OutlineButton(
        child: Icon(icon),
        textColor: color,
        borderSide: BorderSide(color: color),
        onPressed: () {},
      ),
    );
  }
}
