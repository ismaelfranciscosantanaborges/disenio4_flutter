import 'dart:convert';
import 'package:disenio_flutter/models/Doctor.dart';
import 'package:http/http.dart' as http;



Future<List<Doctor>> getDoctors() async {
  List<Doctor> listDoctor = [];

  final resp = await http.get('https://randomuser.me/api/?results=50');

  final json = jsonDecode(resp.body);

  for (var item in json['results']) {
    listDoctor.add(Doctor.fromJson(item));
  }

  return listDoctor;
}
