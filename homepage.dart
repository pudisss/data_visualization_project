import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

// The main function
void main() => runApp(Homepage());

class Homepage extends StatefulWidget {
  @override
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold());
  }
}
