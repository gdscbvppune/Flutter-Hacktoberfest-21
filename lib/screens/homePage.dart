import 'package:dsc_web_app/pages/main_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final String eventName1 = "{Event Name Here}";
final String eventName2 = "{Event Name Here}";
final String eventName3 = "{Event Name Here}";
final String eventName4 = "{Event Name Here}";

final String eventDate1 = "Month DD, YYYY";
final String eventDate2 = "Month DD, YYYY";
final String eventDate3 = "Month DD, YYYY";
final String eventDate4 = "Month DD, YYYY";

final String eventDuration1 = "HH:MM - HH:MM";
final String eventDuration2 = "HH:MM - HH:MM";
final String eventDuration3 = "HH:MM - HH:MM";
final String eventDuration4 = "HH:MM - HH:MM";

final String eventOrganizer1 = "Lorem Ipsum";
final String eventOrganizer2 = "Lorem Ipsum";
final String eventOrganizer3 = "Lorem Ipsum";
final String eventOrganizer4 = "Lorem Ipsum";

final String eventLink1 = "#";
final String eventLink2 = "#";
final String eventLink3 = "#";
final String eventLink4 = "#";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      imageAsset("assets/images/home.jpg", 250.0),
                      RichText(
                        textAlign: TextAlign.left,
                        textScaleFactor: 2,
                        text: TextSpan(
                          children: <TextSpan>[
                            textStyleSpan("Make good things ", 20.0,
                                FontWeight.bold, 97, 97, 97, 1.0),
                            textStyleSpan("together", 20.0, FontWeight.bold, 26,
                                115, 232, 1.0),
                            textStyleSpan(
                                ".", 20.0, FontWeight.bold, 97, 97, 97, 1.0),
                            textStyleSpan(
                                "\n\n", 0.0, FontWeight.normal, 0, 0, 0, 0.0),
                            textStyleSpan("DSC BVP PUNE", 10.0,
                                FontWeight.normal, 0, 0, 0, 1.0),
                            textStyleSpan(
                                "\n\n", 0.0, FontWeight.normal, 0, 0, 0, 0.0),
                            textStyleSpan(
                                "A Google Developers program for university students, with the aim to help students build their development skills and knowledge.",
                                8.0,
                                FontWeight.normal,
                                0,
                                0,
                                0,
                                1.0),
                            textStyleSpan(
                                "\n\n", 0.0, FontWeight.normal, 0, 0, 0, 0.0),
                            textStyleSpan("#dscbvppune  #dscindia", 8.0,
                                FontWeight.normal, 150, 150, 150, 1.0),
                            textStyleSpan(
                                "\n", 0.0, FontWeight.normal, 0, 0, 0, 0.0),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          blueRaisedButton("Become A Member",
                              "https://www.github.com/dscbvppune"),
                          VerticalDivider(),
                          cyanFlatButton("Learn More",
                              "https://developers.google.com/community/dsc/"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Divider(color: Colors.white),

              Card(
                color: Color.fromRGBO(240, 240, 240, 1.0),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      textStyleNormal(
                          "What we do?",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          10.0,
                          FontWeight.w600,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "A Google Developers program for university students, with the aim to help students build their development skills and knowledge.",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          8.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "About different Google technologies",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          8.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      Divider(),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      iconAsset(Icons.chat_bubble, Color.fromRGBO(0, 0, 0, 0.6),
                          60.0),
                      textStyleNormal(
                          "Talks",
                          Alignment.center,
                          TextAlign.center,
                          1.0,
                          20.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "Get updated with the latest news and announcements",
                          Alignment.center,
                          TextAlign.center,
                          1.0,
                          15.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      Divider(),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      iconAsset(Icons.code, Color.fromRGBO(0, 0, 0, 0.6), 60.0),
                      textStyleNormal(
                          "Codelabs",
                          Alignment.center,
                          TextAlign.center,
                          1.0,
                          20.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "Get hands-on experience and guidance from the community members",
                          Alignment.center,
                          TextAlign.center,
                          1.0,
                          15.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      Divider(),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      iconAsset(
                          Icons.airplay, Color.fromRGBO(0, 0, 0, 0.6), 60.0),
                      textStyleNormal(
                          "Live Viewing Parties",
                          Alignment.center,
                          TextAlign.center,
                          1.0,
                          20.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "Share knowledge in different Companies, colleges and universities",
                          Alignment.center,
                          TextAlign.center,
                          1.0,
                          15.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                    ],
                  ),
                ),
              ),

              Divider(color: Colors.white),

              Card(
                color: Color.fromRGBO(76, 74, 120, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      textStyleNormal(
                          "About DSC BVP Pune",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          10.0,
                          FontWeight.w600,
                          255,
                          255,
                          255,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "Developer Student Clubs (DSC BVP Pune) is a Google Developers program for university students to learn mobile and web development skills. The clubs is open to any student, ranging from novice developers who are just starting, to advanced developers who want to further their skills. The clubs is intended as a space for students to try out new ideas and collaborate to solve mobile and web development problems.",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          8.0,
                          FontWeight.normal,
                          255,
                          255,
                          255,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      Row(
                        children: <Widget>[
                          whiteFlatButton("Github Page",
                              "https://www.github.com/dscbvppune"),
                          VerticalDivider(),
                          whiteFlatButton("Instagram Page",
                              "https://www.instagram.com/dscbvppune/"),
                        ],
                      ),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/about'),
                        child: textStyleNormal(
                            "See more about DSC BVP Pune",
                            Alignment.centerLeft,
                            TextAlign.left,
                            2.0,
                            8.0,
                            FontWeight.normal,
                            255,
                            255,
                            255,
                            1.0),
                      ),
                    ],
                  ),
                ),
              ),

              Divider(color: Colors.white),

              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      textStyleNormal(
                          "Our Events & Meetups",
                          Alignment.center,
                          TextAlign.center,
                          2.0,
                          10.0,
                          FontWeight.w600,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "At sessions that span from the technical to the visionary, let’s celebrate and discover what the technologies can enable: how product innovation, open source, and ML and AI can propel enterprises forward and solve the big problems that impact all of us.",
                          Alignment.center,
                          TextAlign.center,
                          2.0,
                          8.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      purpleFlatButton("See More", 100.0, false, '/events'),
                      Divider(),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      eventsContainer(eventName1, eventDate1, eventDuration1,
                          eventOrganizer1, eventLink1),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      eventsContainer(eventName2, eventDate2, eventDuration2,
                          eventOrganizer2, eventLink2),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      eventsContainer(eventName3, eventDate3, eventDuration3,
                          eventOrganizer3, eventLink3),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      eventsContainer(eventName4, eventDate4, eventDuration4,
                          eventOrganizer4, eventLink4),
                    ],
                  ),
                ),
              ),

              Divider(color: Colors.white),

              //TODO: Implement Feature Event Card

              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      textStyleNormal(
                          "Partners",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          10.0,
                          FontWeight.w600,
                          0,
                          0,
                          0,
                          1.0),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      RichText(
                        textAlign: TextAlign.left,
                        textScaleFactor: 2,
                        text: TextSpan(
                          children: <TextSpan>[
                            textStyleSpan(
                                "A very big thank you to all our partners for their continued partnership.",
                                8.0,
                                FontWeight.normal,
                                0,
                                0,
                                0,
                                1.0),
                            textStyleSpan(
                                "\n\n", 0.0, FontWeight.normal, 0, 0, 0, 0.0),
                            textStyleSpan(
                                "If you’re interested in being showcased throughout ",
                                8.0,
                                FontWeight.normal,
                                0,
                                0,
                                0,
                                1.0),
                            textStyleSpan("DSC BVP PUNE", 8.0, FontWeight.w600,
                                0, 0, 0, 1.0),
                            textStyleSpan(", contact ", 8.0, FontWeight.normal,
                                0, 0, 0, 1.0),
                            TextSpan(
                              text: "dscbvppune@gmail.com ",
                              style: GoogleFonts.openSans(
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(21, 101, 192, 1.0)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    _launchURL("mailto:dscbvppune@gmail.com"),
                            ),
                            textStyleSpan(
                                "to discuss sponsorship opportunities.",
                                8.0,
                                FontWeight.normal,
                                0,
                                0,
                                0,
                                1.0),
                          ],
                        ),
                      ),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "General Partners",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          7.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      Divider(color: Colors.white),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () => _launchURL(
                                "https://developers.google.com/groups"),
                            padding: EdgeInsets.all(0.0),
                            child:
                                imageAsset("assets/images/gdglogo.png", 50.0),
                          ),
                          VerticalDivider(),
                          RaisedButton(
                            onPressed: () =>
                                _launchURL("https://www.womentechmakers.com/"),
                            padding: EdgeInsets.all(0.0),
                            child: imageAsset("assets/images/wtm.png", 50.0),
                          ),
                        ],
                      ),
                      Divider(color: Colors.white),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          // child: svgAsset("assets/svg/gdg-x.svg",
                          //     "https://github.com/gdg-x", 50.0, 50.0),
                        ),
                      ),
                      textStyleNormal(
                          "\n",
                          Alignment.centerLeft,
                          TextAlign.left,
                          1.0,
                          10.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          0.0),
                      textStyleNormal(
                          "Template Partner",
                          Alignment.centerLeft,
                          TextAlign.left,
                          2.0,
                          7.0,
                          FontWeight.normal,
                          0,
                          0,
                          0,
                          1.0),
                      Divider(color: Colors.white),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RaisedButton(
                          onPressed: () =>
                              _launchURL("https://gdgjalandhar.com/"),
                          padding: EdgeInsets.all(0.0),
                          child: imageAsset(
                              "assets/images/gdgjalandhar.png", 50.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  textStyleSpan(
      String text, double size, weight, int r, int g, int b, double o) {
    return TextSpan(
      text: text,
      style: GoogleFonts.openSans(
          fontSize: size,
          fontWeight: weight,
          color: Color.fromRGBO(r, g, b, o)),
    );
  }

  textStyleNormal(String text, boxAlign, textAlign, double scaleFactor,
      double size, weight, int r, int g, int b, double o) {
    return Align(
      alignment: boxAlign,
      child: Text(
        text,
        textAlign: textAlign,
        textScaleFactor: scaleFactor,
        style: GoogleFonts.openSans(
            fontSize: size,
            fontWeight: weight,
            color: Color.fromRGBO(r, g, b, o)),
      ),
    );
  }

  eventsContainer(String eventName, String eventDate, String eventDuration,
      String eventOrganizer, String eventLink) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Column(
        children: <Widget>[
          textStyleNormal(eventName, Alignment.centerLeft, TextAlign.left, 2.0,
              8.5, FontWeight.normal, 0, 0, 0, 1.0),
          textStyleNormal("\n", Alignment.centerLeft, TextAlign.left, 1.0, 10.0,
              FontWeight.normal, 0, 0, 0, 0.0),
          Row(
            children: <Widget>[
              iconAsset(
                  Icons.insert_invitation, Color.fromRGBO(0, 0, 0, 0.6), 25.0),
              VerticalDivider(width: 8.0),
              textStyleNormal(eventDate, Alignment.centerLeft, TextAlign.left,
                  2.0, 8.0, FontWeight.normal, 0, 0, 0, 0.8),
            ],
          ),
          Divider(height: 5.0, color: Colors.white),
          Row(
            children: <Widget>[
              iconAsset(Icons.watch_later, Color.fromRGBO(0, 0, 0, 0.6), 25.0),
              VerticalDivider(width: 8.0),
              textStyleNormal(eventDuration, Alignment.centerLeft,
                  TextAlign.left, 2.0, 8.0, FontWeight.normal, 0, 0, 0, 0.8),
            ],
          ),
          Divider(height: 5.0, color: Colors.white),
          Row(
            children: <Widget>[
              iconAsset(Icons.person, Color.fromRGBO(0, 0, 0, 0.6), 25.0),
              VerticalDivider(width: 8.0),
              textStyleNormal("by $eventOrganizer", Alignment.centerLeft,
                  TextAlign.left, 2.0, 8.0, FontWeight.normal, 0, 0, 0, 0.8),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: purpleFlatButton("See More", 100.0, true, eventLink),
          ),
        ],
      ),
    );
  }

  blueRaisedButton(String text, String url) {
    return RaisedButton(
      child: textStyleNormal(text, Alignment.center, TextAlign.center, 1.0,
          15.0, FontWeight.normal, 255, 255, 255, 1.0),
      onPressed: () => _launchURL(url),
      color: Color.fromRGBO(53, 131, 235, 1.0),
      elevation: 1.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    );
  }

  cyanFlatButton(String text, String url) {
    return FlatButton(
      child: textStyleNormal(text, Alignment.center, TextAlign.center, 1.0,
          15.0, FontWeight.w600, 0, 188, 212, 1.0),
      onPressed: () => _launchURL(url),
      highlightColor: Color.fromRGBO(225, 247, 250, 1.0),
      splashColor: Color.fromRGBO(168, 232, 240, 1.0),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color.fromRGBO(0, 188, 212, 1.0)),
          borderRadius: BorderRadius.circular(5.0)),
    );
  }

  whiteFlatButton(String text, String url) {
    return FlatButton(
      child: textStyleNormal(text, Alignment.center, TextAlign.center, 1.0,
          15.0, FontWeight.w600, 255, 255, 255, 1.0),
      onPressed: () => _launchURL(url),
      highlightColor: Color.fromRGBO(151, 150, 182, 1.0),
      splashColor: Color.fromRGBO(97, 95, 136, 1.0),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color.fromRGBO(255, 255, 255, 1.0)),
          borderRadius: BorderRadius.circular(5.0)),
    );
  }

  purpleFlatButton(String text, double w, isURL, routeUrl) {
    return SizedBox(
      width: w,
      child: FlatButton(
        child: textStyleNormal(text, Alignment.center, TextAlign.center, 1.0,
            15.0, FontWeight.normal, 76, 74, 120, 1.0),
        onPressed: () {
          isURL ? _launchURL(routeUrl) : Navigator.pushNamed(context, routeUrl);
        },
        highlightColor: Color.fromRGBO(230, 230, 240, 1.0),
        splashColor: Color.fromRGBO(97, 95, 136, 1.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  imageAsset(String asset, double h) {
    return Image(
      image: AssetImage(asset),
      height: h,
    );
  }

  iconAsset(icon, color, size) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch: $url';
    }
  }
}
