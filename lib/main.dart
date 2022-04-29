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

  final String name = "headding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //appBar: AppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                  color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red.shade300,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              print('Text Button Clicked');
                            },
                            child: Text('Click Me'),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print('Elevated Button Clicked');
                          },
                          child: Text("Click Me2"))
                    ],
                  )),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.green, width: 6),
                  ),
                  child: Center(child: Text('simple text')),
                )),
            Expanded(
              child: Container(
                  color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red.shade300,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              print('Text Button Clicked');
                            },
                            child: Text('Click Me'),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print('Elevated Button Clicked');
                          },
                          child: Text("Click Me2"))
                    ],
                  )),
            )
          ],
        )));
  }
}
