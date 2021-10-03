import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/cogs.gif"),
                width: 150,
                height: 150,
              ),
              Text(
                "Organizing an event ...",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}