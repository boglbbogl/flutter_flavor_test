import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor_test/_env/enviroment.dart';
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
          FirebaseAuth.instance.signOut();
          GoogleSignIn _googleSignIn = GoogleSignIn();
          GoogleSignInAccount? _account = await _googleSignIn.signIn();
          if (_account != null) {
            GoogleSignInAuthentication _authentication =
                await _account.authentication;
            OAuthCredential _googleCredential = GoogleAuthProvider.credential(
              idToken: _authentication.idToken,
              accessToken: _authentication.accessToken,
            );
            UserCredential _credential = await FirebaseAuth.instance
                .signInWithCredential(_googleCredential);
            print(_credential.user?.displayName);
            print(_credential.user?.email);
            FirebaseFirestore _firestore = FirebaseFirestore.instance;
            await _firestore
                .collection("${Enviroment.enviroment.type}_flavor_test")
                .doc(_credential.user?.uid)
                .set(
              {
                "uid": _credential.user?.uid,
              },
            );
          }
        },
        child: Center(
          child: Text(Enviroment.enviroment.url),
        ),
      ),
    );
  }
}
