import 'package:flutter/material.dart';
import 'package:navigatordemo/ScreenOne.dart';
import 'package:navigatordemo/ScreenTwo.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(children: [
        Container(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScreenOne();
                }));
              });
            },
            child: Text(
              "go to page #2",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "go to page #1",
              style: TextStyle(fontSize: 30),
            ),
          ),
        )
      ]),
    );
  }
}
