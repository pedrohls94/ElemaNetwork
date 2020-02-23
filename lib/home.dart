import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Logged in'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Text('Nothing to see here'),
        ],
      ),
    );
  }
}