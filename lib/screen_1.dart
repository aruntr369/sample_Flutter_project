import 'package:flutter/material.dart';
import 'package:sample_project_2/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Screen 1'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  //   return ScreenTwo();
                  // }));

                  Navigator.of(context).pushNamed('screen_2');
                },
                child: Text('Go to Screen 2'))
          ],
        ),
      ),
    );
  }
}
