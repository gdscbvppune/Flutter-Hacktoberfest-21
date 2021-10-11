import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
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
                "I don't know what to write here ...",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
