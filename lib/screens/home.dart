import 'package:aunshowshim/screens/my_style.dart';
import 'package:aunshowshim/screens/register.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Explicit

// Method

  Widget showLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset("images/logo.png"),
    );
  }

  Widget showAppName() {
    return Text(
      "Kai Jeaw",
      style: TextStyle(
        fontSize: 30.0,
        color: MyStyle().textColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: "Oxygen",
      ),
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: MyStyle().textColor,
      child: Text(
        "Sign In",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      child: Text("Sign Up"),
      onPressed: () {
        print("U CLICK Sing Up");

        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);

      },
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButton(),
        SizedBox(
          width: 20.0,
        ),
        signUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/wallpaper.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(padding: EdgeInsets.all(50.0),
              color: Color.fromRGBO(255, 255, 255, 0.8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showLogo(),
                  SizedBox(
                    height: 8.0,
                  ),
                  showAppName(),
                  SizedBox(
                    height: 15.0,
                  ),
                  showButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
