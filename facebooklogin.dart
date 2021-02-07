import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

// The main function or the root function
void main() => runApp(FacebookloginPage());

class FacebookloginPage extends StatefulWidget {
  @override
  _FacebookloginState createState() => _FacebookloginState();
}

class _FacebookloginState extends State<FacebookloginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () => Navigator.pop(context))),
                    Container(
                        child: SvgPicture.asset(
                            "assets/images/facebook (1).svg",
                            width: 150,
                            height: 150)),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("Welcome Back",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 30,
                                color: Colors.white))),
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        width: 300,
                        height: 50,
                        child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                hintText: "Enter your email",
                                hintStyle: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.white),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))))),
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
                                    color: Colors.white)))),
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text("Login"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ))
                  ],
                ))));
  }
}
