import 'package:flutter/material.dart';
import 'values_widget.dart';
import 'my_child_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text('InheritedWidgey'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'child widget',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
          ValuesWidget(
            MyChildWidget(),
          ),
        ],
      ),
    ));
  }
}
