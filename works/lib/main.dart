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

//now its working, some bug didn't let it work while in CA
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new ListView.builder(
      itemCount:20,
      itemBuilder: (context, rowNumber){
          return new Text("Row");
      },

    );

    // return new Center(
    //   child: new Text("test", 
    //     style: new TextStyle(fontSize: 24.0),),
    // );
  }
}

