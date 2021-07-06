import 'package:flutter/material.dart';
import 'package:test_flutter/Navbar/Navbar.dart';
import 'package:test_flutter/home_page.dart';

import 'LandingPage/LandingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '쁠루타 웹',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Corben"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(195, 20, 50, 1.0),
                  Color.fromRGBO(36, 11, 54, 1.0)
                ]),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Navbar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: LandingPage(),
                )
              ],
            ),
          )),
    );
  }
}

// var a = 255;
// var b = 18;
// var c = 32;
// var d = 47;
//
// final Color darkBlue = Color.fromARGB(a, b, c, d);
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//         // visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }
