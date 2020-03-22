import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'bottom_bar.dart';

class AboutTab extends StatefulWidget {
  AboutTab({Key key}) : super(key: key);

  @override
  _AboutTabState createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        _createTopImage(),
        SizedBox(
          height: 40,
        ),
        _createTitle1(),
        SizedBox(
          height: 40,
        ),
        _createDescription1(),
        SizedBox(
          height: 40,
        ),
        BottomBar()
      ],
    ));
  }

  _createTopImage() {
    return Stack(
      children: <Widget>[
        Container(
            width: double.infinity,
            height: 100,
            child: Image.asset(
              "assets/wood_floor.jpg",
              fit: BoxFit.fitWidth,
            )),
        Container(
            width: double.infinity,
            height: 100,
            child: Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "ABOUT CASCADE FINISH & TRIM",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )))),
      ],
    );
  }

  _createTitle1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "Quality, Service, & Style",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }

  _createDescription1() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: Text(
        'When I do a custom build for a client, they will get a competitive price with quality and service that very few can emulate. I use only the highest grade sustainable products on the market. All hardware is of the best quality. I feel that the customer should never second guess their decision to go with Cascade Finish & Trim for any reason. Along with quality and service, I focus on style, detail options, and competitive prices. These are what I obsess over.',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 24, height: 2),
      ),
    );
  }
}
