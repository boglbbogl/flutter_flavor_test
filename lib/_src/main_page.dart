import 'package:flutter/material.dart';
import 'package:flutter_flavor_test/_env/enviroment.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Enviroment.enviroment.type)),
      body: Center(
        child: Text(Enviroment.enviroment.url),
      ),
    );
  }
}
