import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

// The main function or the root function
void main() => runApp(GithubPage());

class GithubPage extends StatefulWidget {
  @override
  _GithubPage createState() => _GithubPage();
}

class _GithubPage extends State<GithubPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Container(
            child: Row(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5, left: 5),
                child: IconButton(
                  icon: SvgPicture.asset("assets/images/back.svg"),
                  onPressed: () => Navigator.pop(context),
                )),
            Container(
                margin: EdgeInsets.only(left: 40),
                child: Text("Github Login Page",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        color: Colors.black))), // The title of the appbar
          ],
        )),
        Container(
            margin: EdgeInsets.only(top: 20),
            child: SvgPicture.asset("assets/images/github.svg",
                width: 150, height: 150)),
        Container(
            margin: EdgeInsets.only(top: 30),
            width: 300,
            height: 50,
            child: TextField(
                decoration: InputDecoration(
              hintText: "Enter your email",
              hintStyle: TextStyle(
                  fontFamily: "Roboto", fontSize: 15, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              prefixIcon: Icon(Icons.email),
            ))),
        Container(
            margin: EdgeInsets.only(top: 40),
            width: 300,
            height: 50,
            child: TextField(
                decoration: InputDecoration(
              hintText: "Enter your password",
              hintStyle: TextStyle(
                  fontFamily: "Roboto", fontSize: 15, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              prefixIcon: Icon(Icons.lock),
            ))),
        Container(
            margin: EdgeInsets.only(top: 40),
            child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.green,
                textColor: Colors.white,
                child: Text("Login",
                    style: TextStyle(fontFamily: "Roboto", fontSize: 15)))),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Don't have an account?",
                style: TextStyle(
                    fontFamily: "Roboto", fontSize: 10, color: Colors.grey)))
      ],
    )));
  }
}
