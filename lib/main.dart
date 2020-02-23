import 'package:elema_network/home.dart';
import 'package:elema_network/login.dart';
import 'package:flutter/material.dart';

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
  Home _home;

  _MyHomePageState() {
    _loginPage = new Login(onSubmit: (){_login();});
    _home = new Home();
    _screen = _loginPage;
  }

  void _login() {
    setState(() {
      _screen = _home;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _screen,
    );
  }
}
