import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigatordemo/main.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(children: [
        Container(
          child: Text(
            "hello this is Screen One",
            style: TextStyle(fontSize: 40),
          ),
        ),
        DropdownButton(
          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
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
      ]),
    );
  }
}
