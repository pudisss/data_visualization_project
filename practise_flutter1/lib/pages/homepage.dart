import "package:flutter/material.dart";
import "package:practise_flutter1/pages/introduce.dart";
import "package:practise_flutter1/pages/dev journey.dart";
import "package:practise_flutter1/pages/contact.dart";
import "package:practise_flutter1/pages/profile.dart";
import "package:practise_flutter1/pages/language.dart";

void main() => runApp(Signup());

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.purple[900], Colors.purple[600]],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 679,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 30, offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 250, top: 10),
                                child: ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("Back",
                                        style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 15)))),
                            Container(
                                padding: EdgeInsets.only(right: 250, top: 20),
                                child: Text("About Me",
                                    style: TextStyle(
                                        fontFamily: "Oswald", fontSize: 20))),
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                height: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                        width: 160,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.green[600],
                                                Colors.greenAccent,
                                              ],
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Column(
                                          children: [
                                            Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Text("Introduce Myself",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 19))),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    top: 9, left: 9),
                                                child: Text(
                                                    """ Click the button down below.
To view my story of myself
""",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 15))),
                                            Container(
                                                child: Builder(
                                                    builder: (context) => Center(
                                                        child: RaisedButton(
                                                            onPressed: () => Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        introduce())),
                                                            color: Colors.green,
                                                            textColor:
                                                                Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        30)),
                                                            child: Text("More",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Oswald",
                                                                    fontSize: 15))))))
                                          ],
                                        )),
                                    SizedBox(width: 50),
                                    Container(
                                        width: 160,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.red[300],
                                              Colors.pink
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Text("Dev Journey",
                                                  style: TextStyle(
                                                      fontFamily: "Oswald",
                                                      fontSize: 20)),
                                            ),
                                            Container(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                    """You can view my dev journey by
clicking the botton down below""",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 15))),
                                            Container(
                                                padding:
                                                    EdgeInsets.only(top: 14),
                                                child: Builder(
                                                    builder: (context) => Center(
                                                        child: RaisedButton(
                                                            onPressed: () => Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            journey())),
                                                            color: Colors.red,
                                                            textColor:
                                                                Colors.white,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        30)),
                                                            child: Text("More",
                                                                style: TextStyle(fontFamily: "Oswald", fontSize: 15))))))
                                          ],
                                        )),
                                    SizedBox(width: 50),
                                    // This box is the box that have a button that can contact me
                                    Container(
                                        width: 160,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.orange,
                                            Colors.yellow[600],
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                                child: Text("Contact Me",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 20))),
                                            Container(
                                                margin:
                                                    EdgeInsets.only(left: 9),
                                                child: Text(
                                                    """ You can contact me by clicking
the button down below
""",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 15))),
                                            Container(
                                                padding:
                                                    EdgeInsets.only(top: 14),
                                                child: Builder(
                                                    builder: (context) => Center(
                                                        child: RaisedButton(
                                                            onPressed: () => Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        contactpage())),
                                                            color:
                                                                Colors.orange,
                                                            textColor:
                                                                Colors.white,
                                                            child: Text(
                                                                "Contact Me",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Oswald",
                                                                    fontSize:
                                                                        15)),
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))))))
                                          ],
                                        )),
                                    SizedBox(width: 50),
                                    // This box is the box that the user can click the botton to view my profile my journey or that stuff like that
                                    Container(
                                        width: 160,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.green,
                                                  Colors.blue
                                                ],
                                                end: Alignment.bottomLeft,
                                                begin: Alignment.topRight),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Column(
                                          children: [
                                            Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Text("My Profile",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 20))),
                                            Container(
                                                child: Text(
                                                    """ You can see my profile that 
will tell you all of the story
of my life
""",
                                                    style: TextStyle(
                                                        fontFamily: "Oswald",
                                                        fontSize: 15))),
                                            Container(
                                              child: Builder(
                                                  builder: (context) => Center(
                                                      child: RaisedButton(
                                                          onPressed: () => Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      Language())),
                                                          color: Colors.blue,
                                                          textColor:
                                                              Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      30)),
                                                          child: Text("Profile",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Oswald",
                                                                  fontSize: 15))))),
                                            )
                                          ],
                                        )),
                                  ],
                                )),
                          ],
                        )),
                  ],
                ))));
  }
}
