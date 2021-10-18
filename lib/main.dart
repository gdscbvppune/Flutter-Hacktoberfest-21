import 'package:flutter/material.dart';
import './screens/aboutPage.dart';
import './screens/achievementsPage.dart';
import './screens/cocPage.dart';
import './screens/eventsPage.dart';
import './screens/homePage.dart';
import './screens/projectsPage.dart';
import './screens/splashPage.dart';
import './screens/teamPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
