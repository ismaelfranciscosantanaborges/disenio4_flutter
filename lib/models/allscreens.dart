import 'package:disenio_flutter/pages/InfoDoctor.dart';
import 'package:disenio_flutter/pages/listDoctorsScreen.dart';
import 'package:flutter/material.dart';

class AllScreens with ChangeNotifier {
  Widget _actualScreen;
  int _index;


  AllScreens() {
    this._index = 0;
    _actualScreen = InfoDoctorScreen();
  }

  int get index => this._index;

  Widget get actualScreen => _actualScreen;

  set index(int value) {
    if (value >= 0 && value <= 3) {

      if(value == 3){
        _actualScreen = ListDoctorsScreen();
      }

      if(value == 0){
        _actualScreen = InfoDoctorScreen();
      }

      this._index = value;
      notifyListeners();
    }
  }
}
