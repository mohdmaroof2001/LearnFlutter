import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCall extends StatefulWidget {
  const ApiCall({Key? key}) : super(key: key);

  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  String showApi = "";
  String check1 = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apicalling();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Text(check1),
          ),
        ),
      ),
    );
  }

  apicalling() async {
    var Responce = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/albums"),
    );
    // print("print api = ${Responce.body}");
    setState(() {
      showApi = Responce.body;
    });
    // Map<String, String> dict;
    List check = json.decode(showApi);
    setState(() {
      check1 = check[4]['title'];
      // print("length = ${check[4]['title']}");
    });
  }
}
