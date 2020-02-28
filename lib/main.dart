import 'dart:async';
import 'dart:convert';
import 'package:elema_network/home.dart';
import 'package:elema_network/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elema Network',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'lala'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _screen;
  Login _loginPage;

  _MyHomePageState() {
    _loginPage = new Login(onSubmit: () {
      _login();
    });
    _screen = _loginPage;
  }

  void _login() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        var graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.height(200)&access_token=${result.accessToken.token}');

        var profile = json.decode(graphResponse.body);
        setState(() {
          _screen = Home(profile);
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _screen,
    );
  }
}
