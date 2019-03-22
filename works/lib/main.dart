import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',            
      home: RandomWords(),
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
          return new Text("Row a test");
      },

    );

    // return new Center(
    //   child: new Text("test", 
    //     style: new TextStyle(fontSize: 24.0),),
    // );
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
}

  Widget _buildRow(WordPair pair) {
  return ListTile(
    title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ),
  );
}

  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Startup Name Generator'),
    ),
    body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

