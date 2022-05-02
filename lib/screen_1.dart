import 'package:flutter/material.dart';
import 'package:sample_project_2/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: ((context, index) => ListTile(title: Text('Person $index'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return ScreenTwo(name:'Person $index');
            }));
          },)),
          separatorBuilder: (ctx,index)=> Divider()
          ,
          itemCount: 30,
        ),
      ),
    );
  }
}
