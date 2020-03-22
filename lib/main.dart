import 'package:carpenter/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vasyl Constraction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.pink[800],
      ),
      home: HomePage(),
    );
  }
}

