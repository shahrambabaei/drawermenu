import 'package:flutter/material.dart';
import 'package:loginpage/constans.dart';

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestSreenState();
}

class _TestSreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestScreen'),
      ),
      drawer: Drawer(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: mediumBlue),
                  child: Text('Drawer Header')),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          )),
    );
  }
}
