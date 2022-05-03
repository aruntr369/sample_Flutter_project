import 'package:flutter/material.dart';
import 'package:sample_project_2/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
      checkUserLoggedIn();
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
        .pushReplacement(MaterialPageRoute(builder: ((ctx) => ScreenLogin())));
  }


  Future<void> checkUserLoggedIn() async{
    final _sharedPrefs  = await SharedPreferences.getInstance();
    _sharedPrefs.getBool(SAVE_KEY_NAME);
    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
    if(_userLoggedIn == null || _userLoggedIn == false){
      gotoLogin();
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> ScreenHome()));
    }
  
  }


}
