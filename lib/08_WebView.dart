// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHome2 extends StatefulWidget {
  const MyHome2({Key? key}) : super(key: key);

  @override
  _MyHome2State createState() => _MyHome2State();
}

class _MyHome2State extends State<MyHome2> {
  bool webViewLoading = false;
  int progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View"),
      ),
      body: Center(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            // Container(
            //   width: 200.0,
            //   height: 200.0,
            //   color: Colors.black,
            // ),
            // Container(
            //   width: 100.0,
            //   height: 100.0,
            //   color: Colors.yellow,
            // )
            WebView(
              initialUrl: "https://www.google.com",
              javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (str) {
                print("onPageStarted");
                setState(() {
                  webViewLoading = true;
                  // progress = 0;
                });
              },
              onPageFinished: (str) {
                print("onPageFinished");
                setState(() {
                  webViewLoading = false;
                  // progress = 100;
                });
              },
              onProgress: (val) {
                print("onProgress $progress");
                setState(() {
                  progress = val;
                });
              },
              gestureNavigationEnabled: true,
            ),
            if (webViewLoading) ...[
              Center(
                child: CircularProgressIndicator(
                  value: progress.toDouble(),
                  strokeWidth: 3,
                  backgroundColor: Colors.yellow,
                  color: Colors.red,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
              Center(
                child: Text("$progress"),
              )
            ]
          ],
        ),
      ),
    );
  }
}
