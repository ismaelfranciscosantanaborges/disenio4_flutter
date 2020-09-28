import 'package:disenio_flutter/colors.dart' as myColor;
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _createBackground(),
          _createBoxInput(),
        ],
      ),
    );
  }

  Widget _createBackground() {
    final _circle = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1), shape: BoxShape.circle),
    );

    final _iconAndName = Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Icon(
            Icons.person_pin_circle,
            color: Colors.white,
            size: 90,
          ),
          SizedBox(height: 10, width: double.infinity),
          Text(
            'Ismael Francisco S. B.',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    );

    return FractionallySizedBox(
      heightFactor: 0.4,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [myColor.kAppBarDark, myColor.kAppBarLight]),
        ),
        child: Stack(
          children: [
            Positioned(top: -10, left: -30, child: _circle),
            Positioned(top: 30, right: 10, child: _circle),
            Positioned(bottom: -50, right: 30, child: _circle),
            Positioned(top: 150, left: 150, child: _circle),
            Positioned(bottom: -20, left: -15, child: _circle),
            _iconAndName
          ],
        ),
      ),
    );
  }

  Widget _createBoxInput() {
    final _correoInput = Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Ingrees Correo',
          counterText: 'NOMBRE',
          hintText: 'example@gmail.com',
          icon: Icon(Icons.alternate_email),
        ),
      ),
    );

    final _passwordInput = Container(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Ingrees Correo',
          counterText: 'CONTRASEÑA',
          hintText: 'Contraseña',
          icon: Icon(Icons.lock_outline),
        ),
      ),
    );

    final _buttom = RaisedButton(onPressed: null);

    return Container(
      margin: EdgeInsets.only(top: 300),
      width: double.infinity,
      child: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: 0.85,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 3),
                  blurRadius: 3,
                )
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Ingreso', style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 20,
              ),
              _correoInput,
              _passwordInput,
            ],
          ),
        ),
      ),
    );
  }
}
