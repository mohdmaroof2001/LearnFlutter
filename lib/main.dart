// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:learnflutter/01_Box.dart';
import 'package:learnflutter/02_RowandColumn.dart';
import 'package:learnflutter/03_FunctionRowandColumn.dart';
import 'package:learnflutter/04_LoginPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    ),
  );
}
