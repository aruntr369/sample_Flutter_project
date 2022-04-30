import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyanAccent),
      home: ScreenHome(),
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

class ScreenHome extends StatefulWidget {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _textController = TextEditingController();

  String _textofTV ='text will display here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 40,
            bottom: 20,
            top: 50,
          ),
          child: Container(
            color: Colors.yellow[400],
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type Some Thing'),
                ),
                ElevatedButton(onPressed: () {
                  print(_textController.text);
                  setState(() {
                    _textofTV =_textController.text;

                  });
                }, child: Text('Click Here')),
                Text(_textofTV),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
