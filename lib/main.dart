import 'package:flutter/material.dart';

import 'package:design/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => BasicDesignScreen()},
    );
  }
}
