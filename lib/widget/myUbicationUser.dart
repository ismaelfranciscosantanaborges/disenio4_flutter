import 'package:flutter/material.dart';

class MyUserUbication extends StatelessWidget {
  const MyUserUbication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          _getInfoTheJons(
              Icons.work, 'Hospital Punta pacifica. USA', Colors.blue),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: _getInfoTheJons(Icons.place,
                '1735 Adamas Ave, Toms River, Nj. 08753', Colors.pinkAccent),
          ),
          _getInfoTheJons(Icons.home, '1735 Adamas Ave, Toms River, Nj. 08753',
              Colors.deepPurpleAccent),
        ],
      ),
    );
  }

  Widget _getInfoTheJons(IconData icon, String text, Color color) {
    return Row(children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: color,
        ),
      ),
      SizedBox(width: 15),
      Text(text, style:TextStyle(color: Colors.grey),),
    ]);
  }
}
