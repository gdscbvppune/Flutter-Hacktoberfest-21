import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/homePage.dart';
import '../pages/projectsPage.dart';
import '../pages/eventsPage.dart';
import '../pages/achievementsPage.dart';
import '../pages/teamPage.dart';
import '../pages/aboutPage.dart';
import '../pages/cocPage.dart';

enum Pages { HOME, PROJECTS, EVENTS, ACHIEVEMENTS, TEAM, ABOUT, COC } // Pages
Pages _page = Pages.HOME;
String _pageTitle = "Home";

class PageHandler extends StatefulWidget {
  @override
  _PageHandlerState createState() => _PageHandlerState();
}

class _PageHandlerState extends State<PageHandler> {
  @override
  Widget build(BuildContext context) {
    _pageSwitch(page) {
      switch (page) {
        case Pages.HOME:
          return new HomePage();
          break;

        case Pages.PROJECTS:
          return new ProjectsPage();
          break;

        case Pages.EVENTS:
          return new EventsPage();
          break;

        case Pages.ACHIEVEMENTS:
          return new AchievementsPage();
          break;

        case Pages.TEAM:
          return new TeamPage();
          break;

        case Pages.ABOUT:
          return new AboutPage();
          break;

        case Pages.COC:
          return new COCPage();
          break;
      }
      return null;
    }

    _pageSelect(selectedPage, title) {
      setState(() {
        _pageTitle = title;
        _page = selectedPage;
      });
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
          title:
              Text(_pageTitle, style: GoogleFonts.roboto(color: Colors.black)),
          elevation: 10.0,
          backgroundColor: Colors.grey[200],
          iconTheme: new IconThemeData(color: Colors.black)),
      body: _pageSwitch(_page),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  _pageSelect(Pages.HOME, "Home");
                }),
            ListTile(
                leading: Icon(Icons.library_books),
                title: Text("Projects"),
                onTap: () {
                  _pageSelect(Pages.PROJECTS, "Projects");
                }),
            ListTile(
                leading: Icon(Icons.event),
                title: Text("Events"),
                onTap: () {
                  _pageSelect(Pages.EVENTS, "Events");
                }),
            ListTile(
                leading: Icon(FontAwesomeIcons.medal),
                title: Text("Achievements"),
                onTap: () {
                  _pageSelect(Pages.ACHIEVEMENTS, "Achievements");
                }),
            ListTile(
                leading: Icon(Icons.people),
                title: Text("Team"),
                onTap: () {
                  _pageSelect(Pages.TEAM, "Team");
                }),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                _pageSelect(Pages.ABOUT, "About");
              },
              trailing: OutlineButton(
                child: Text("COC"),
                splashColor: Theme.of(context).accentColor,
                borderSide: BorderSide(color: Colors.grey),
                onPressed: () {
                  _pageSelect(Pages.COC, "Code Of Conduct");
                },
              ),
            ),
            Divider(thickness: 1.0),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
                _logOutAlert();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _logOutAlert() {
    Alert(
      context: context,
      type: AlertType.none,
      title: "Logout ?",
      style: AlertStyle(
          animationType: AnimationType.grow,
          animationDuration: Duration(milliseconds: 200),
          alertBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      buttons: [
        DialogButton(
          child: Text(
            "Yes",
            style: TextStyle(color: Color(0xFF4285F4), fontSize: 20),
          ),
          onPressed: () {},
          color: Colors.white,
        ),
        DialogButton(
          child: Text(
            "No",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color(0xFF4285F4),
        )
      ],
    ).show();
  }
}
