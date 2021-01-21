import "package:flutter/material.dart";

void main() => runApp(Signup());

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 290, bottom: 140),
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Back",
                              style: TextStyle(
                                  fontFamily: "Oswald", fontSize: 15)),
                        )),
                    Container(
                        padding: EdgeInsets.only(bottom: 20, right: 170),
                        child: Text("More Option",
                            style:
                                TextStyle(fontFamily: "Oswald", fontSize: 30))),
                    Container(
                        padding: EdgeInsets.only(right: 240),
                        child: RaisedButton(
                          onPressed: () => {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.black,
                          textColor: Colors.white,
                          child: Text("Contact me",
                              style: TextStyle(
                                  fontFamily: "Oswald", fontSize: 15)),
                        )),
                    Container(
                        padding: EdgeInsets.only(right: 250),
                        alignment: Alignment.centerRight,
                        child: RaisedButton(
                            onPressed: () => {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.green,
                            textColor: Colors.white,
                            child: Text("More details",
                                style: TextStyle(
                                    fontFamily: "Oswald", fontSize: 15)))),

                    Container(
                        width: double.infinity,
                        height: 331,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                            gradient: LinearGradient(
                              colors: [Colors.yellow[800], Colors.orange[600]],
                              end: Alignment.bottomLeft,
                              begin: Alignment.topRight,
                            ))) //
                  ],
                ))));
  }
}
