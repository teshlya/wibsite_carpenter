import 'package:animated_text_kit/animated_text_kit.dart'; //https://flutterawesome.com/a-flutter-package-to-create-cool-and-beautiful-text-animations/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'bottom_bar.dart';

class ServicesTab extends StatefulWidget {
  ServicesTab({Key key}) : super(key: key);

  @override
  _ServicesTabState createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab>
    with TickerProviderStateMixin {
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
          height: 100,
        ),
        _createTitle2(),
        SizedBox(
          height: 40,
        ),
        _createDescription2(),
        SizedBox(
          height: 0,
        ),
        _createTitle3(),
        SizedBox(
          height: 40,
        ),
        _createDescription3(),
        SizedBox(
          height: 100,
        ),
        _createTitle4(),
        SizedBox(
          height: 40,
        ),
        _createDescription4(),
        SizedBox(
          height: 100,
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
                      "CABINETS & WOODWORKING",
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
          "Truly Custom, From Design to Installation",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }

  _createDescription1() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: DropCapText(
        'I have been a licensed contractor since 1993, designing and building custom cabinets. I have seen many styles come and go, but truly custom cabinets are easy to spot. They are quality cabinets lasting decade after decade, fitting the style of the home perfectly. I have a small shop that has the flexibility to tailor fit the design, style, build and install for each job individually. I combine modern hardware and organizers with custom doors and molding to give you the look, feel, and function of your choice.'
        'Most clients have some idea of what they would like to have done. This idea varies in levels of detail. Whether you just know you need some cabinets or you already have a design to execute, I will provide detailed drawings and door and molding samples before any payment is received. Only when you’re completely happy and very clear about what will be done will a contract be drawn up. The contract includes cost and schedule details that will not change, unless you would like to add to the project. I am always happy to accommodate project additions on the fly!',
        dropCapPosition: DropCapPosition.end,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 24, height: 2),
        dropCap: DropCap(
            width: 478 * 0.7,
            height: 640 * 0.7,
            child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Image.asset(
                  "assets/cabinet1.jpg",
                ))),
      ),
    );
  }

  _createTitle2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "High Quality Materials & Traditional to Modern Styles",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }

  _createDescription2() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: DropCapText(
        'These days there are more choices of materials and styles than ever before. I can help guide you through these selections, from a rustic knotty pine to a clean, white look. I source my material from a variety of suppliers for the best quality and prices. There are a wide variety of finishes to match the look of your house specifically. I also only use sustainable lumber and plywood, never any particle board or MDZ (medium density fiberboard). All my finishes are high grade water born products.',
        dropCapPosition: DropCapPosition.start,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 24, height: 2),
        dropCap: DropCap(
            width: 478 * 0.7,
            height: 640 * 0.7,
            child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Image.asset(
                  "assets/cabinet2.jpg",
                ))),
      ),
    );
  }

  _createTitle3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "Tying In Design Throughout Your Home",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }

  _createDescription3() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: Text(
        'Most of my jobs are more than just supplying cabinets, doors or molding. From design to install, we get the best results throughout the whole home. For clients, I often tie cabinets in with wainscoting, window molding, crown molding, and even staircases to complete the look. I know not everything can be done at once. Sometimes I go back to a client’s home over a span of several years. I get to know them and their homes and it becomes much more than just someone buying my cabinets. I take pride in making a pleasant experience out of it for my clients.',
        style: TextStyle(fontSize: 24, height: 2),
      ),
    );
  }

  _createTitle4() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "One Contractor for Your Whole Project",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ));
  }

  _createDescription4() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: DropCapText(
        'I do all free quotes and designs myself. I’m the one person you will deal with all the way from start to finish. All doors, drawer boxes, and custom run molding and milled by me. This gives me the control to make that truly custom fit. Plus, I am never at the mercy of other companies having a product on backorder. Your project will always be on schedule.'
            'When doing a job for a client, they are always priority. My focus is on quality as well as schedule. I never deviate from the planned schedule. If the job needs more time to get it right, I work more. Residential remodels can be very disruptive for a client’s life. That’s why I feel it’s very important to stay on schedule. This can only be achieved with the one on one, one at a time philosophy I have.',
        dropCapPosition: DropCapPosition.start,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 24, height: 2),
        dropCap: DropCap(
            width: 478 * 0.7,
            height: 640 * 0.7,
            child: Padding(
                padding: EdgeInsets.only(right: 20, bottom: 20),
                child: Image.asset(
                  "assets/cabinet2.jpg",
                ))),
      ),
    );
  }
}
