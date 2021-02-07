import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:try_flutterproject1/googlelogin.dart";
import "package:try_flutterproject1/facebooklogin.dart";
import "package:try_flutterproject1/githubpage.dart";
import "package:try_flutterproject1/homepage.dart";

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final Mycontroller1 = TextEditingController();
  final Mycontroller2 = TextEditingController();

  // The function that will check the data in the textfield was input already or not


  void _check_data() {
    if (Mycontroller1.text != null && Mycontroller2.text != null) {
      setState(() => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage())
      ));
    }
    else if (Mycontroller1.text == null || Mycontroller2.text == null) {
      setState(() {
        return AlertDialog(content: Text("You have to input your infomation"));
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: SvgPicture.asset(
                            "assets/images/undraw_welcome_3gvl.svg",
                            width: 100,
                            height: 100)),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("Welcome Back",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 25))),
                    Container(
                        child: Text("All of the image is in flaticon",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 10))),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 40),
                        width: 300,
                        height: 50,
                        child: TextField(
                            controller: Mycontroller1,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: "Enter your email",
                              hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 15,
                                  color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ))),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 300,
                        height: 50,
                        child: TextField(
                            controller: Mycontroller2,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                hintText: "Enter your password",
                                hintStyle: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))))),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: RaisedButton(
                          onPressed: ,
                          
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text("Login",
                              style: TextStyle(
                                  fontFamily: "Roboto", fontSize: 15)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("Or another account?",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 10,
                                color: Colors.grey))),
                    Container(
                        child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 35, top: 15),
                            child: Builder(
                                builder: (context) => Container(
                                    child: RaisedButton(
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Googlelogin())),
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: SvgPicture.asset(
                                            "assets/images/google.svg",
                                            width: 30,
                                            height: 30))))),
                        Container(
                            margin: EdgeInsets.only(top: 15, left: 30),
                            child: Builder(
                                builder: (context) => Container(
                                    child: RaisedButton(
                                        color: Colors.blue,
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  FacebookloginPage(),
                                            )),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: SvgPicture.asset(
                                            "assets/images/facebook (1).svg",
                                            width: 30,
                                            height: 30))))),
                        Container(
                            margin: EdgeInsets.only(left: 30, top: 15),
                            child: Builder(
                                builder: (context) => Container(
                                    child: RaisedButton(
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    GithubPage())),
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Text("Github",
                                            style: TextStyle(
                                                fontFamily: "Roboto",
                                                fontSize: 15,
                                                color: Colors.white))))))
                      ],
                    )),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text("Credit from FlatIcon",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 10,
                                color: Colors.grey)))
                  ],
                ))));
  }
}
