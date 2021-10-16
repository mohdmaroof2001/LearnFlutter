// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.brown,
          child: Column(
            children: [
              commonRow(col2: Colors.black),
              commonRow(col3: Colors.purple, col2: Colors.red),
              commonRow(col1: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget commonRow(
      {Color col1 = Colors.teal,
      Color col2 = Colors.yellow,
      Color col3 = Colors.orange}) {
    var width = MediaQuery.of(context).size.width / 3;
    var height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        3;

    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Center(
            child: Text("hi"),
          ),
          width: width,
          height: height,
          color: col1,
        ),
        Container(
          child: Text("hi"),
          width: width,
          height: height,
          color: col2,
        ),
        Container(
          child: Text("hi"),
          width: width,
          height: height,
          color: col3,
        ),
      ],
    );
  }
}
