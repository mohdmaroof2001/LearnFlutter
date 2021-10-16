// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple,
        //row
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              child: Text("Hello"),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Hello"),
            SizedBox(
              height: 50,
            ),
            Text("Hello"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  print("button click");
                },
                child: Text("Hit me...")),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            )
          ],
        ),
      )),
    );
  }
}
