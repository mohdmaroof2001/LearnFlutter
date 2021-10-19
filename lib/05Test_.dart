// ignore_for_file: file_names

// import 'dart:js';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width / 5;
    // var height = MediaQuery.of(context).size.height / 5;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: Text(
            'ACCOUNT',
            style: TextStyle(color: Colors.black),
          ),
          //  leading: Icon(Icons.search),
          actions: [
            // action button
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                // SizedBox(
                //   height: 2,
                // ),
                profileBox(),
                SizedBox(
                  height: 3,
                ),
                moretext(Icons.home, 'My Followed Shops'),
                moretext(Icons.account_balance, 'My Bank Details'),
                moretext(Icons.share, 'My Shared Products'),
                moretext(Icons.payment, 'My Payments'),
                moretext(Icons.redeem, 'Refer & Earn'),
                moretext(Icons.change_circle, "Spin"),
                moretext(Icons.wallet_giftcard, 'Meesho Credits'),
                moretext(Icons.business_sharp, 'Business Logo'),
                moretext(Icons.shop, 'Become a Supplier'),
                moretext(Icons.settings, 'My Setting'),
                moretext(Icons.business_sharp, 'Business Logo'),
                // moretext(Icons.shop, 'Become a Supplier'),
                // moretext(Icons.settings, 'My Setting'),
                // moretext(Icons.business_sharp, 'Business Logo'),

                //  bottom(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.black,
                      //  semanticLabel: 'Home',
                    ),
                  ),
                  Text('Home')
                ],
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.category, size: 35, color: Colors.black,
                      //  semanticLabel: 'Home',
                    ),
                  ),
                  Text('Categories')
                ],
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag, size: 35, color: Colors.black,
                      //  semanticLabel: 'Home',
                    ),
                  ),
                  Text('Orders')
                ],
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.help, size: 35, color: Colors.black,
                      //  semanticLabel: 'Home',
                    ),
                  ),
                  Text('Help')
                ],
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width / 5,
              color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, size: 35, color: Colors.pink
                        //  semanticLabel: 'Home',
                        ),
                  ),
                  Text('Account')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget profileBox() {
  return Container(
    width: double.infinity,
    height: 100,
    color: Colors.white,
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: Center(
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
              ),
              onPressed: () {},
              child: Text('Sign Up'),
            ),
            SizedBox(
              height: 2,
            ),
            Text('View and update your profile details')
          ],
        ),
      ],
    ),
  );
  // SizedBox(height: 5,);
}

Widget moretext(IconData icon, String text) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(11.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(text),
            ],
          ),
        )
      ],
    ),
  );
}

// Widget bottom() {
//   return Scaffold(
//     bottomNavigationBar: Row(
//       children: [
//         Container(
//           height: 80,
//           width: MediaQuery.of(context).size.width,
//           color: Colors.cyan,
//         )
//       ],
//     ),
//   );
// }
