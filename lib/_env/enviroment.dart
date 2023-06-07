import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor_test/_env/enviroment_type.dart';
import 'package:flutter_flavor_test/_src/my_app.dart';
import 'package:flutter_flavor_test/_env/firebase_options_dev.dart' as dev;
import 'package:flutter_flavor_test/_env/firebase_options_qa.dart' as qa;
import 'package:flutter_flavor_test/_env/firebase_options.dart' as prod;

class Enviroment {
  static late Enviroment _instance;
  static late EnviromentType _type;
  static late FirebaseOptions _options;

  factory Enviroment.init(EnviromentType type) {
    _type = type;
    switch (type) {
      case EnviromentType.dev:
        _options = dev.DefaultFirebaseOptions.currentPlatform;
        break;
      case EnviromentType.qa:
        _options = qa.DefaultFirebaseOptions.currentPlatform;
        break;
      case EnviromentType.prod:
        _options = prod.DefaultFirebaseOptions.currentPlatform;
        break;
      default:
    }
    _instance = const Enviroment._internal();
    return _instance;
  }

  const Enviroment._internal();

  Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: _options);

    runApp(const MyApp());
  }

  static Enviroment get instance => _instance;
  static EnviromentType get enviroment => _type;
}
