import 'package:flutter/material.dart';
import 'package:sample_project_2/screens/login.dart';
import 'package:sample_project_2/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [IconButton(onPressed: () {
          signout(context);
        }, icon: Icon(Icons.exit_to_app))],
      ),
      body: SafeArea(child: Center(child: Text('home'))),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedPrefs =await SharedPreferences.getInstance();
      await _sharedPrefs.clear();
      
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
      return ScreenLogin();
    }), (route) => false);
  }
}
