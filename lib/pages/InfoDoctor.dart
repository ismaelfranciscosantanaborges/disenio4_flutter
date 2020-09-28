import 'package:disenio_flutter/widget/myButtomOptions.dart';
import 'package:disenio_flutter/widget/myInfoCard.dart';
import 'package:disenio_flutter/widget/myMoreInfo.dart';
import 'package:disenio_flutter/widget/myUbicationUser.dart';
import 'package:flutter/material.dart';


class InfoDoctorScreen extends StatelessWidget {
  const InfoDoctorScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            MyInfoCard(),
            SizedBox(height: 30),
            MyButtomOptions(),
            SizedBox(height: 30),
            MyUserUbication(),
            MyMoreInfo()
          ],
        ),
      ),
    );
  }
}
