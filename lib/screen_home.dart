import 'package:flutter/material.dart';

class ScreenHome2 extends StatefulWidget {
  const ScreenHome2({Key? key}) : super(key: key);

  @override
  State<ScreenHome2> createState() => _ScreenHome2State();
}

class _ScreenHome2State extends State<ScreenHome2> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DisplayText(counterText: _counter.toString())
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print(_counter);
          setState(() {
            _counter = _counter + 1;
          });
        },
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
final String counterText;

  const DisplayText({Key? key,required this.counterText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(counterText
      
    );
  }
}
