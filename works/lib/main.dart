import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"myApp test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("App Bar Title"),
        ),
       body: new HomeWidget(),
      )
    );   
  }
}

//something is wrong with emulator, will check later
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Text("test");
  }
}

