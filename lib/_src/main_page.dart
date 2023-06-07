import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor_test/_env/enviroment.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Enviroment.enviroment.type)),
      body: GestureDetector(
        onTap: () async {
          HapticFeedback.heavyImpact();

          // OAuthToken? _token = await UserApi.instance.loginWithKakaoTalk();
          // await TokenManagerProvider.instance.manager.setToken(_token);
          // User? _user = await UserApi.instance.me();
          // print("token :: ${_user.id}");
          // print("token :: ${_user.kakaoAccount?.email}");
        },
        child: Center(
          child: Text(Enviroment.enviroment.url),
        ),
      ),
    );
  }
}
