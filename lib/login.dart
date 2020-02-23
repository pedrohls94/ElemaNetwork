import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key key,
    @required this.onSubmit,
  }) : super(key:key);

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: onSubmit,
              color: Colors.deepPurple,
              textColor: Colors.yellow,
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 20)
              ),
            ),
          ],
        ),
      ),
    );
  }
}