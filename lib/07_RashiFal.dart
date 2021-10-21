// ignore_for_file: file_names

//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RashiFal(),
    );
  }
}

class RashiFal extends StatefulWidget {
  const RashiFal({Key? key}) : super(key: key);

  @override
  _RashiFalState createState() => _RashiFalState();
}

class _RashiFalState extends State<RashiFal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "पंचांग",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "त्यौहार",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "राशिफल",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "धर्म",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.brown,
          child: Column(
            children: [
              commonRow(
                  img1: 'assest/Aries.png',
                  img2: 'assest/Taurus.png',
                  img3: 'assest/Gemini.png',
                  text1: "मेष",
                  text3: "मिथुन",
                  text2: "वृष"),
              commonRow(
                  img1: 'assest/Cancer.png',
                  img2: 'assest/Leo.png',
                  img3: 'assest/Virgo.png',
                  text1: "कर्क",
                  text2: "सिंह",
                  text3: "कन्या"),
              commonRow(
                  img1: 'assest/Libra.png',
                  img2: 'assest/Scorpio.png',
                  img3: 'assest/Sagittarius.png',
                  text1: "तुला",
                  text2: "वॄश्चिक",
                  text3: "धनु"),
              commonRow(
                  img1: 'assest/Capricorn.png',
                  img2: 'assest/Aquarius.png',
                  img3: 'assest/Pisces.png',
                  text1: "मकर",
                  text2: "कुंभ",
                  text3: "मीन"),
            ],
          ),
        ),
      ),
    );
  }

  Widget commonRow({
    Color col1 = Colors.blue,
    Color col2 = Colors.blue,
    Color col3 = Colors.blue,
    String text1 = '',
    String text2 = '',
    String text3 = '',
    img1 = '',
    img2 = '',
    img3 = '',
  }) {
    var width = MediaQuery.of(context).size.width / 3;
    var height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        4;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width,
          height: height,
          color: col1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(img1),
                width: 70,
                height: 70,
                fit: BoxFit.fill,
              ),
              Text(
                text1,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height,
          color: col2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(img2),
                width: 70,
                height: 70,
                //   fit: BoxFit.fill,
              ),
              Text(
                text2,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height,
          color: col3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(img3),
                width: 70,
                height: 70,
              ),
              Text(
                text3,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
