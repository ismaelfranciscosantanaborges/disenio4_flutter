import 'package:flutter/material.dart';

import '../colors.dart' as myColor;

class MyAppBar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            myColor.kAppBarDark,
            myColor.kAppBarLight,
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        ),
        child: SafeArea(
          child: Row(children: [
            IconButton(
                icon: Icon(Icons.dehaze, size: 25, color: Colors.white),
                onPressed: () {}),
            Expanded(
              child: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
                icon: Icon(Icons.search, size: 25, color: Colors.white),
                onPressed: () {}),
          ]),
        ),
      );
  }
}
