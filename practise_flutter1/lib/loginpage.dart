import "package:flutter/material.dart";

void main() => runApp(loginpage());

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red[400], Colors.red[800]]),
                ),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(right: 250),
                        child: ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Back",
                                style: TextStyle(fontFamily: "Oswald")))),
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        width: 300,
                        height: 531,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 3,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 3), blurRadius: 6)
                                    ]),
                                child: Container(
                                    padding: EdgeInsets.only(left: 35, top: 5),
                                    child: Text("Login Page",
                                        style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 20,
                                            color: Colors.white)))),
                            Container(
                                margin: EdgeInsets.only(top: 50),
                                width: 250,
                                height: 60,
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your email",
                                        hintStyle:
                                            TextStyle(fontFamily: "Oswald"),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30),
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5)),
                                        )))),
                            Container(
                                margin: EdgeInsets.only(top: 40),
                                width: 250,
                                height: 60,
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your password",
                                        hintStyle:
                                            TextStyle(fontFamily: "Oswald"),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30),
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5)),
                                        )))),
                            Container(
                                margin: EdgeInsets.only(top: 3, left: 160),
                                child: Text("Forgot the password?",
                                    style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontSize: 10,
                                        color: Colors.grey))),
                            Container(
                                margin: EdgeInsets.only(top: 30),
                                child: RaisedButton(
                                    onPressed: () => {},
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        side: BorderSide(color: Colors.green)),
                                    child: Text("Login",
                                        style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 15)))),
                            Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text("Don't have an account?",
                                    style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontSize: 10,
                                        color: Colors.grey))),
                          ],
                        ))
                  ],
                ))));
  }
}
