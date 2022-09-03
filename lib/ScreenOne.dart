import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
