import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        _createTopImage(),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
        Text(
          "fvsvfsad",
          style: TextStyle(fontSize: 50),
        ),
      ],
    ));
  }

  _createTopImage() {
    Container(
        width: double.infinity,
        child: Image.asset(
          "assets/kitchen.png",
          fit: BoxFit.fitWidth,
        ));
  }
}
