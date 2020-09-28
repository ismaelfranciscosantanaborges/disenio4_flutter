import 'package:disenio_flutter/colors.dart' as myColor;
import 'package:disenio_flutter/models/allscreens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

//TODO: Arreglar esta variable global
int globalIndex = 0;

class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 75,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _getOptions(Icons.home, 'home'),
            _getOptions(Icons.bookmark_border, 'Save'),
            _getFlottingNavigatorBar(),
            _getOptions(Icons.add_alert, 'Alert'),
            _getOptions(Icons.dehaze, 'Menu'),
          ],
        ),
      ),
    );
  }

  Widget _getFlottingNavigatorBar() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(offset: Offset(0, 2), color: Colors.grey, blurRadius: 4)
        ],
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          myColor.kBottomLight,
          myColor.kBottomStronge,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Icon(
        Icons.add,
        size: 40,
        color: Colors.white,
      ),
    );
  }

  Widget _getOptions(IconData icon, String title) {
    if(globalIndex > 3) globalIndex = 0;
    
    final index = globalIndex;
    globalIndex++;
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Consumer<AllScreens>(
        builder: (context, allScreens, _) => InkWell(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FaIcon(
                icon,
                color: (allScreens.index == index)
                    ? myColor.kAppBarLight
                    : Colors.grey,
                size: 30,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          onTap: () {
            allScreens.index = index;
            print(index.toString());
          },
        ),
      ),
    );
  }
}
