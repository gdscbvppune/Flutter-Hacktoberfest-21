import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
      ),
      body: Center(
        child: Text('Team page is here'),
      ),
    );
  }
}
