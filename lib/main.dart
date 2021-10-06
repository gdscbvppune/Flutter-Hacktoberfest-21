import 'package:flutter/material.dart';
import './services/pageHandler.dart';
import './pages/aboutPage.dart';
import './pages/achievementsPage.dart';
import './pages/cocPage.dart';
import './pages/eventsPage.dart';
import './pages/homePage.dart';
import './pages/loginPage.dart';
import './pages/projectsPage.dart';
import './pages/splashPage.dart';
import './pages/teamPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC App',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/splash': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/projects': (context) => ProjectsPage(),
        '/events': (context) => EventsPage(),
        '/achievements': (context) => AchievementsPage(),
        '/team': (context) => TeamPage(),
        '/about': (context) => AboutPage(),
        '/coc': (context) => COCPage(),
      },
      initialRoute: '/',
    );
  }
}
