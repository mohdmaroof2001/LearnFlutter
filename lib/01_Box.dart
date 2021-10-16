// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Container(
            color: Colors.yellow,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
//flotting add