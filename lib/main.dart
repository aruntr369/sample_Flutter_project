import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber.shade500),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

final String name ="headding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        //appBar: AppBar(),
        body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red.shade300,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            )));
  }
}
