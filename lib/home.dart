import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  dynamic _profile;
  Home(profile) {
    _profile = profile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Logged in'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              '${_profile['name']}',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      _profile['picture']['data']['url'],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
