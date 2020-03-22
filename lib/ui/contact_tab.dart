import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'bottom_bar.dart';

class ContactTab extends StatefulWidget {
  ContactTab({Key key}) : super(key: key);

  @override
  _ContactTabState createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        _createTopImage(),
        SizedBox(
          height: 40,
        ),
        _createContacts(),
        _createForm(),
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
                      "CONTACT VASYL CONSTRACTION LLC",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )))),
      ],
    );
  }

  _createContacts() {
    return Container(
        width: double.infinity,
        height: 170,
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
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "SERVICE AREA",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Connecticut",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  _createContact() {
    return Column(
      children: <Widget>[
        Icon(
          Icons.contacts,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "CONTACT US",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "(203) 832 - 0876",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "@gmail.com",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  _createHours() {
    return Column(
      children: <Widget>[
        Icon(
          Icons.access_time,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "HOURS",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "24/7 Service",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  _createForm() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(),
          flex: 1,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _createTitle(),
              _createFields(),
            ],
          ),
          flex: 5,
        ),
        Expanded(
          child: Container(),
          flex: 1,
        ),
      ],
    );
  }

  _createTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Get In Touch With Us",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 20,
        ),
        Text(
          "Please, fill out this short form and we'll contact you shortly. ",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  _createFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: _createNameField(),
              flex: 1,
            ),
          ],
        ),
      ],
    );
  }

  _createNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Name:"),
        TextField(),
      ],
    );
  }
}
