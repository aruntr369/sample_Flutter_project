import 'package:flutter/material.dart';
import 'package:sample_project_2/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getSaveData(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text('Save Value'))
          ],
        ),
      )),
    );
  }

  Future<void> saveDataToStorage() async {
    print(_textController.text);
//Shared Preference
    final sharesPrefs = await SharedPreferences.getInstance();

    //Save value
    await sharesPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSaveData(BuildContext context) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final savedValue = sharedPrefs.getString('saved_value');
    if (savedValue != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenTwo()));
    }
  }
}
