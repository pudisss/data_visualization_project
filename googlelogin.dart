import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

// The main function or the root function
void main() => runApp(Googlelogin());

class Googlelogin extends StatefulWidget {
  @override
  _GoogleloginState createState() => _GoogleloginState();
}

class _GoogleloginState extends State<Googlelogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context))),
        Container(
            margin: EdgeInsets.only(top: 30),
            child: SvgPicture.asset("assets/images/google.svg",
                width: 150, height: 150)),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Welcome Back",
                style: TextStyle(fontFamily: "Roboto", fontSize: 20))),
        Container(
            margin: EdgeInsets.only(top: 40),
            width: 300,
            height: 50,
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 15,
                        color: Colors.grey)))),
        Container(
            margin: EdgeInsets.only(top: 40),
            width: 300,
            height: 50,
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 15,
                        color: Colors.grey)))),
        Container(
            margin: EdgeInsets.only(top: 40),
            child: RaisedButton(
                onPressed: () {},
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Login",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 15,
                        color: Colors.white)))),
        Container(
            margin: EdgeInsets.only(top: 40),
            child: Text("Don't have an account?",
                style: TextStyle(
                    fontFamily: "Roboto", fontSize: 10, color: Colors.grey)))
      ],
    )));
  }
}
