import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: Text(
          "hello thi is Screen Two",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
