import 'package:flutter/material.dart';
import 'package:apple_sign_in/apple_sign_in.dart';

class Login extends StatelessWidget {
  const Login({
    Key key,
    @required this.loginWithFacebook,
    @required this.loginWithApple,
  }) : super(key:key);

  final VoidCallback loginWithFacebook;
  final VoidCallback loginWithApple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: Container()
              ),
              Expanded(
                flex: 8,
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: loginWithFacebook,
                        color: Colors.deepPurple,
                        textColor: Colors.yellow,
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20)
                        ),
                      )
                    )
                  ]),
                  Row(children: <Widget>[
                    Expanded(
                      child: AppleSignInButton(
                        onPressed: loginWithApple,
                      ),
                    )
                  ])
                ]),
              ),
              Expanded(
                flex: 1,
                child: Container()
              )
            ])
          ],
        ),
      ),
    );
  }
}