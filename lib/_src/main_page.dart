import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor_test/_env/enviroment.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Enviroment.enviroment.type)),
        body: SizedBox(
          width: MediaQueryData.fromWindow(window).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(Enviroment.enviroment.url),
              GestureDetector(
                onTap: () async {
                  UserCredential? _user =
                      await FirebaseAuth.instance.signInAnonymously();
                  print(_user.user?.uid);
                },
                child: Text("Anonymouse"),
              )
            ],
          ),
        ));
  }
}
