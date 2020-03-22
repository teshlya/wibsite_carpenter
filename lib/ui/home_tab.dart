import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'bottom_bar.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

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
        SizedBox(
          height: 40,
        ),
        _createTitle(),
        SizedBox(
          height: 40,
        ),
        _createDescription(),
        SizedBox(
          height: 100,
        ),
        _createTitlePhoto(),
        SizedBox(
          height: 100,
        ),
        BottomBar()
      ],
    ));
  }

  _createTopImage() {
    return Container(
        width: double.infinity,
        child: Image.asset(
          "assets/kitchen.png",
          fit: BoxFit.fitWidth,
        ));
  }

  _createTitle() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "Trust Vasyl Construction LLC to Provide You With Exceptional Remodeling Services",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }

  _createDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: Text(
          "      If you live in the state of Connecticut and are looking to get your home remodeled, look no further than Vasyl Construction LLC. We're your one-stop shop for top-of-the-line remodeling services. We're a family-owned business with 10 years of experience. Reach out to us for all your remodeling needs. Call us for FREE estimates!",
          style: TextStyle(fontSize: 24, height: 1.5)),
    );
  }

  _createTitlePhoto() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "Pictures of Our Top-Quality Remodeling Service",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }
}
