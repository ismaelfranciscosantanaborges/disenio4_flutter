import 'package:disenio_flutter/models/allscreens.dart';
import 'package:disenio_flutter/widget/myappbar.dart';
import 'package:disenio_flutter/widget/mybottombar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => AllScreens()),
        //ChangeNotifierProvider(create: (context) => Doctor(),)
      ],
      child: Scaffold(
        appBar: PreferredSize(
          child: MyAppBar(),
          preferredSize: Size.fromHeight(50),
        ),
        body: Consumer<AllScreens>(
          builder: (context, allScreen, _) => allScreen.actualScreen,
        ),
        bottomNavigationBar: MyBottomAppBar(),
      ),
    );
  }
}

