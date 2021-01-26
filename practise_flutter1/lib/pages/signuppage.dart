import "package:flutter/material.dart";

void main() => runApp(signup());

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(right: 250),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Back",
                                style: TextStyle(fontFamily: "Oswald")))),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 270,
                        height: 555,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 30,
                              color: Colors.grey,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green[600],
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                ),
                                child: Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: Text("Sign up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Oswald",
                                            fontSize: 25)))),
                            Container(
                                margin: EdgeInsets.only(top: 60),
                                width: 220,
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your username",
                                        hintStyle:
                                            TextStyle(fontFamily: "Oswald"),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(50),
                                                bottomLeft: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                                topRight:
                                                    Radius.circular(5)))))),
                            Container(
                                margin: EdgeInsets.only(top: 40),
                                width: 220,
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your email",
                                        hintStyle:
                                            TextStyle(fontFamily: "Oswald"),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(50),
                                                bottomLeft: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                                topRight:
                                                    Radius.circular(5)))))),
                            Container(
                                margin: EdgeInsets.only(top: 40),
                                width: 220,
                                child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your password",
                                        hintStyle:
                                            TextStyle(fontFamily: "Oswald"),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(50),
                                                bottomLeft: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                                topRight:
                                                    Radius.circular(5)))))),
                            Container(
                                margin: EdgeInsets.only(top: 50),
                                child: RaisedButton(
                                    onPressed: () => {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    child: Text("Sign up",
                                        style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 15)))),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Have an account already?",
                                    style: TextStyle(
                                      fontFamily: "Oswald",
                                      fontSize: 10,
                                      color: Colors.grey,
                                    )))
                          ],
                        )),
                  ],
                ))));
  }
}
