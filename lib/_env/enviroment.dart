import 'package:flutter/material.dart';
import 'package:flutter_flavor_test/_env/enviroment_type.dart';
import 'package:flutter_flavor_test/_env/my_app.dart';

class Enviroment {
  static late Enviroment _instance;
  static late EnviromentType _type;

  factory Enviroment.init(EnviromentType type) {
    _type = type;
    _instance = const Enviroment._internal();
    return _instance;
  }

  const Enviroment._internal();

  void run() => runApp(const MyApp());

  static Enviroment get instance => _instance;
  static EnviromentType get enviroment => _type;
}
