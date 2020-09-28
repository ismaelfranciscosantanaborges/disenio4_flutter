import 'package:flutter/material.dart';
import 'package:disenio_flutter/colors.dart' as myColor;

class MyInfoCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: FractionallySizedBox(
        widthFactor: 0.6,
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: myColor.kAppBarLight,
                      gradient: LinearGradient(
                          colors: [
                            myColor.kAppBarLight,
                            myColor.kAppBarLight2,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/miFoto.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green[300]),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Dr. Ismael Santa',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17, fontFamily: 'arial'),
                ),
              ),
              Text(
                'Profesor y mucho mas que eso es ismael el director.',
                style: TextStyle(color: Colors.grey, fontFamily: 'arial'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
