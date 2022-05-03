import 'package:flutter/material.dart';
import 'package:sample_project_2/screen_1.dart';
import 'package:sample_project_2/screen_2.dart';
import 'package:sample_project_2/screen_home.dart';
import 'package:sample_project_2/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ScreenSplash(),
      // routes: {
      //   'screen1':(ctx) => ScreenOne(),
      //   "screen_2":(ctx) {
      //     return ScreenTwo();
      //   }
      // },
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

  String _textofTV = 'text will display here';

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
                ElevatedButton(
                    onPressed: () {
                      print(_textController.text);
                      setState(() {
                        _textofTV = _textController.text;
                      });
                    },
                    child: Text('Click Here')),
                Text(_textofTV),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//forListview
class ListViewSanple extends StatelessWidget {
  const ListViewSanple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Sample Project'),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('PersoN $index'),
            subtitle: Text('Message $index'),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black45,
              //backgroundImage: NetworkImage('https://www.cloudways.com/blog/wp-content/uploads/wordpress-lazy-load.jpg'),
              backgroundImage: AssetImage('assets/images/happy_meal_small.png'),
            ),
            trailing: Text('$index:00 PM'),
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider();
        },
        itemCount: 30,
      )),
    );
  }
}
