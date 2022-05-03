import 'dart:io';

import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);

  final _usernameControler = TextEditingController();
  final _passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameControler,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'user name'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                  controller: _passwordControler,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'password')),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                checkLogin(context);
              },
              icon: const Icon(Icons.check),
              label: const Text('Login'),
            )
          ],
        ),
      ),
    ));
  }

  void checkLogin(BuildContext ctx) {
    final _username = _usernameControler.text;
    final _password = _passwordControler.text;
    if (_username == _password) {
      //go to home
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

    }
  }
}
