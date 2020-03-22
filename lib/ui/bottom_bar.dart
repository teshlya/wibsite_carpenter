import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 170,
        color: Colors.blue[400],
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _createLocation(),
                _createContact(),
                _createHours(),
              ],
            )));
  }

  _createLocation() {
    return Column(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.yellow[100],
          size: 30,
        ),
        SizedBox(height: 10,),
        Text(
          "SERVICE AREA",
          style: TextStyle(fontSize: 18, color: Colors.yellow[100],),
        ),
        SizedBox(height: 10,),
        Text(
          "Connecticut",
          style: TextStyle(fontSize: 16, color: Colors.white,),
        ),
      ],
    );
  }

  _createContact() {
    return Column(
      children: <Widget>[
        Icon(
          Icons.contacts,
          color: Colors.yellow[100],
          size: 30,
        ),
        SizedBox(height: 10,),
        Text(
          "CONTACT US",
          style: TextStyle(fontSize: 18, color: Colors.yellow[100],),
        ),
        SizedBox(height: 10,),
        Text(
          "(203) 832 - 0876",
          style: TextStyle(fontSize: 16, color: Colors.white,),
        ),
        SizedBox(height: 10,),
        Text(
          "@gmail.com",
          style: TextStyle(fontSize: 16, color: Colors.white,),
        ),
      ],
    );

  }

  _createHours() {
    return Column(
      children: <Widget>[
        Icon(
          Icons.access_time,
          color: Colors.yellow[100],
          size: 30,
        ),
        SizedBox(height: 10,),
        Text(
          "HOURS",
          style: TextStyle(fontSize: 18, color: Colors.yellow[100],),
        ),
        SizedBox(height: 10,),
        Text(
          "24/7 Service",
          style: TextStyle(fontSize: 16, color: Colors.white,),
        ),
      ],
    );

  }
}
