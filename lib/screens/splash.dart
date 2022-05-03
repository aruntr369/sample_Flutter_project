import 'package:flutter/material.dart';
import 'package:sample_project_2/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
      gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/Microsoft_Outlook.png',
          height: 200,
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((ctx) => ScreenLogin())));
  }
}
