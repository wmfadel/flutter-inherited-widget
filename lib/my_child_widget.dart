import 'package:flutter/material.dart';
import 'values_widget.dart';

class MyChildWidget extends StatefulWidget {
  @override
  _MyChildWidgetState createState() => _MyChildWidgetState();
}

class _MyChildWidgetState extends State<MyChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  var size = ValuesWidget.of(context).mySize;
                  if (size <= MediaQuery.of(context).size.width &&
                      size <= MediaQuery.of(context).size.height)
                    ValuesWidget.of(context).mySize += 50;
                });
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  ValuesWidget.of(context).mySize =
                      ValuesWidget.of(context).mySize >= 50
                          ? ValuesWidget.of(context).mySize - 50
                          : 0;
                });
              },
              icon: Icon(Icons.remove),
            )
          ],
        ),
        Container(
          width: ValuesWidget.of(context).mySize,
          height: ValuesWidget.of(context).mySize,
          color: ValuesWidget.of(context).myColor,
        ),
      ],
    );
  }
}
