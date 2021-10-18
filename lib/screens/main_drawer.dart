import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.home), title: Text("Home"), onTap: () {}),
          ListTile(
              leading: Icon(Icons.library_books),
              title: Text("Projects"),
              onTap: () {
                Navigator.of(context).pushNamed('/projects');
              }),
          ListTile(
            leading: Icon(Icons.event),
            title: Text("Events"),
            onTap: () {
              Navigator.of(context).pushNamed('/events');
            },
          ),
          ListTile(
              leading: Icon(FontAwesomeIcons.medal),
              title: Text("Achievements"),
              onTap: () {
                Navigator.of(context).pushNamed('/achievements');
              }),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Team"),
            onTap: () {
              Navigator.of(context).pushNamed('/team');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
            onTap: () {
              Navigator.of(context).pushNamed('/about');
            },
            trailing: OutlineButton(
              child: Text("COC"),
              splashColor: Theme.of(context).accentColor,
              borderSide: BorderSide(color: Colors.grey),
              onPressed: () {
                Navigator.of(context).pushNamed('/coc');
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
    );
  }
}
