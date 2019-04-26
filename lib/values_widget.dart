import 'package:flutter/material.dart';

class ValuesWidget extends InheritedWidget {
  Color myColor = Colors.red;
  double mySize = 100.0;

  ValuesWidget( Widget child) : super(child: child);

  static ValuesWidget of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(ValuesWidget) as ValuesWidget;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
