import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor_test/_env/enviroment.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Enviroment.enviroment.type)),
      body: GestureDetector(
        onTap: () async {
          HapticFeedback.heavyImpact();

          NaverLoginResult _login = await FlutterNaverLogin.logIn();
          print("accessToken ::: ${_login.accessToken}");
          print(_login.account);
        },
        child: Center(
          child: Text(Enviroment.enviroment.url),
        ),
      ),
    );
  }
}
