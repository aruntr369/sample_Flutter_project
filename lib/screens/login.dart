import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sample_project_2/screens/home.dart';
import 'package:sample_project_2/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameControler = TextEditingController();

  final _passwordControler = TextEditingController();

  bool _isDataMatched = true;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                  controller: _usernameControler,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'user name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Value is empty';
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordControler,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
                validator: (value) {
                  // if(_isDataMatched){
                  //   return null;
                  // }else{
                  //   return 'error';
                  // }
                  if (value == null || value.isEmpty) {
                    return 'Value is empty';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: !_isDataMatched,
                    child: Text(
                      'Username password doesnot match',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        checkLogin(context);
                      } else {
                        print('Data empty');
                      }
                    },
                    icon: const Icon(Icons.check),
                    label: const Text('Login'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void checkLogin(BuildContext ctx) async {
    final _username = _usernameControler.text;
    final _password = _passwordControler.text;
    if (_username == _password) {
      print('machess usname and pass');
      //go to home
      final _sharedPrefs =await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY_NAME, true);

      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenHome()));
    } else {
      final _errorMsg = 'Username password doesnot match';
      //Snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.blueAccent,
          duration: const Duration(seconds: 5),
          margin: const EdgeInsets.all(10),
          content: Text(_errorMsg)));

      //AlertDialog
      showDialog(
        context: ctx,
        builder: (ctx1) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(_errorMsg),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx1).pop();
                },
                child: Text('Close'),
              )
            ],
          );
        },
      );

      //Show Text

      setState(() {
        _isDataMatched = false;
      });
    }
  }
}
