import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:carpenter/ui/services_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'about_tab.dart';
import 'contact_tab.dart';
import 'home_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: _createBody(),
    );
  }

  _createAppBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(146.0),
        child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _createTopAppBar(),
                _createMenu(),
              ],
            )));
  }

  _createTopAppBar() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _createLogo(),
                SizedBox(width: 200),
                _createContact(),
              ],
            )));
  }

  _createLogo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          "assets/logo.png",
          height: 70.0,
        ),
        RotateAnimatedTextKit(
          onTap: () {
            print("Tap Event");
          },
          text: ["VASYL CONSTRACTION  ", "FINISH & TRIM  "],
          textStyle: TextStyle(
              color: Colors.blue[400],
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontFamily: 'Open Sans',
              fontSize: 30),
        ),
      ],
    );
  }

  _createContact() {
    return Column(
      children: <Widget>[
        _createRequestEstimate(),
        SizedBox(height: 10),
        _createLocationProne(),
      ],
    );
  }

  _createRequestEstimate() {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.blue[400])),
      onPressed: () {},
      color: Colors.blue[400],
      textColor: Colors.white,
      child: Text("Request free estimate".toUpperCase(),
          style: TextStyle(fontSize: 18)),
    );
  }

  _createLocationProne() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.grey,
          size: 30,
        ),
        Text(
          "Connecticut",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: 100,
        ),
        Icon(
          Icons.phone,
          color: Colors.grey,
          size: 30,
        ),
        Text(
          "(203) 832 - 0876",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  _createMenu() {
    return Container(
        width: double.infinity,
        color: Colors.blue[400],
        alignment: Alignment.center,
        child: getTabBar());
  }

  Widget getTabBar() {
    return Material(
        color: Colors.blue[400],
        child: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              color: Colors.blue[900],
            ),
            indicatorWeight: 0,
            controller: tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[350],
            labelStyle: TextStyle(fontSize: 20),
            tabs: [
              Container(width: 210, child: Tab(text: "Home")),
              Container(width: 210, child: Tab(text: "Services")),
              Container(width: 210, child: Tab(text: "About")),
              Container(width: 210, child: Tab(text: "Request Free Estimate")),
              Container(width: 210, child: Tab(text: "Contact")),
            ]));
  }

  _createBody() {
    return TabBarView(controller: tabController, children: <Widget>[
      HomeTab(),
      ServicesTab(),
      AboutTab(),
      Container(color: Colors.yellow),
      ContactTab()
    ]);
  }
}
