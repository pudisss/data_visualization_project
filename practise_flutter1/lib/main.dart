import 'package:flutter/material.dart';
import "package:practise_flutter1/pages/homepage.dart";
import "package:practise_flutter1/loginpage.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orange[200], Colors.orange[600]],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 50, right: 150),
                                child: Text("Welcome Back",
                                    style: TextStyle(
                                        fontFamily: "Oswald", fontSize: 25))),
                            Container(
                                margin: EdgeInsets.only(right: 190, top: 20),
                                child: Builder(
                                    builder: (context) => Center(
                                        child: RaisedButton(
                                            onPressed: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        loginpage())),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            color: Colors.green,
                                            textColor: Colors.white,
                                            child: Text("Login",
                                                style: TextStyle(
                                                    fontFamily: "Oswald",
                                                    fontSize: 15)))))),
                            Container(
                                padding: EdgeInsets.only(left: 150),
                                child: Text(
                                    "Already have an account or Don't have an account",
                                    style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontSize: 10,
                                        color: Colors.grey))),
                            Container(
                                padding: EdgeInsets.only(right: 190),
                                child: RaisedButton(
                                    onPressed: () => {},
                                    color: Colors.black,
                                    child: Text("Sign up",
                                        style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 15)),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                          ],
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: Colors.black,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50)))),
                    Container(
                        child: Column(
                      children: [
                        Container(
                            width: double.infinity,
                            height: 200,
                            margin: EdgeInsets.only(top: 229),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30)),
                                gradient: LinearGradient(
                                  colors: [Colors.blue[600], Colors.green[400]],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )),
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 15, top: 5),
                                    child: Text(
                                        "To coutinue. Press the button down below",
                                        style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 25))),
                                Container(
                                    child: Builder(
                                        builder: (context) => Center(
                                            child: RaisedButton(
                                                onPressed: () => Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Signup(),
                                                    )),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                color: Colors.black,
                                                textColor: Colors.white,
                                                child: Text("Continue",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 15)))))),
                              ],
                            ))
                      ],
                    )),
                  ],
                ))));
  }
}
