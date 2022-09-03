import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigatordemo/main.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            child: Text(
              "Which City You Would Like To Visit?!",
              style: TextStyle(fontSize: 40),
            ),
          ),
          RadioListTile(
              subtitle: Text(
                  "city style, crowded, night life, nice people, historical places"),
              secondary: Icon(Icons.location_city),
              title: Text(
                "Amman",
                style: TextStyle(fontSize: 16),
              ),
              value: "Amman",
              groupValue: city,
              onChanged: (val) {
                setState(() {
                  city = val.toString();
                });
              }),
          RadioListTile(
              subtitle: Text("More Nature, Lakes, cold weather, nice people"),
              secondary: Icon(Icons.forest),
              title: Text(
                "Helsinki",
                style: TextStyle(fontSize: 16),
              ),
              value: "Helsinki",
              groupValue: city,
              onChanged: (val) {
                setState(() {
                  city = val.toString();
                });
              }),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              });
            },
            child: Text(
              "go to Home page",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
