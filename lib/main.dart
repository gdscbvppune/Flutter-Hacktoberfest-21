import 'package:flutter/material.dart';
import 'package:dsc_web_app/services/pageHandler.dart';
import 'package:dsc_web_app/pages/aboutPage.dart';
import 'package:dsc_web_app/pages/achievementsPage.dart';
import 'package:dsc_web_app/pages/cocPage.dart';
import 'package:dsc_web_app/pages/eventsPage.dart';
import 'package:dsc_web_app/pages/homePage.dart';
import 'package:dsc_web_app/pages/loginPage.dart';
import 'package:dsc_web_app/pages/projectsPage.dart';
import 'package:dsc_web_app/pages/splashPage.dart';
import 'package:dsc_web_app/pages/teamPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC App',
      routes: <String, WidgetBuilder>{
        '/': (context) => new PageHandler(),
        '/splash': (context) => new SplashPage(),
        '/home': (context) => new HomePage(),
        '/projects': (context) => new ProjectsPage(),
        '/events': (context) => new EventsPage(),
        '/achievements': (context) => new AchievementsPage(),
        '/team': (context) => new TeamPage(),
        '/about': (context) => new AboutPage(),
        '/coc': (context) => new COCPage(),
      },
      initialRoute: '/',
    );
  }
}
