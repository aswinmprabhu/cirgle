import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/login1.jpg"),
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Cirgle",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,                  
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Image(
                image: AssetImage("assets/account.png"),
                width: 150.0,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                "\"This App is under construction\"",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic
                ),
              ),
              Padding(padding: EdgeInsets.all(30.0)),
              GoogleSignInButton(
                onPressed: (){},
                darkMode: true,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              MicrosoftSignInButton(
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}