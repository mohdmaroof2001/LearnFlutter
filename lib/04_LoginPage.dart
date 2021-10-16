// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userTEC = TextEditingController();
  TextEditingController pwdTEC = TextEditingController();
  String errorText = "";
  // String welcomeText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(welcomeText),
              // SizedBox(
              //   height: 50,
              // ),
              TextField(
                controller: userTEC,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.verified_user),
                  hintText: "Enter UserName here",
                  labelText: "UserName",
                ),
              ),
              TextField(
                controller: pwdTEC,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.keyboard),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter Password here",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (userTEC.text == "") {
                    setState(() {
                      errorText = 'Enter Username';
                    });
                  } else if (pwdTEC.text.length <= 6) {
                    setState(() {
                      errorText = 'Enter Password';
                    });
                  } else {
                    setState(() {
                      errorText = 'Welcome';
                    });
                  }
                  //     print('Button Press ${userTEC.text} -- ${pwdTEC.text}');
                },
                child: Text('Login'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(errorText),
            ],
          ),
        ),
      ),
    );
  }
}
