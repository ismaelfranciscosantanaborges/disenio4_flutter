import 'package:disenio_flutter/pages/homescreen.dart';
import 'package:disenio_flutter/pages/loginScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'login': (context) => LoginScreen(),
          'home': (context) => HomeScreen()
        });
  }
}
