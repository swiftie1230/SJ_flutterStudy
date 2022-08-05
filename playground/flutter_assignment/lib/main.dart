import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String mainText = 'This is the first assignment';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First Assignment'),
          ),
          body: Column(children: [
            RaisedButton(
              onPressed: () {},
              child: Text('Change Text'),
            ),
            Text('This is my first assignment!'),
          ])),
    );
  }
}
