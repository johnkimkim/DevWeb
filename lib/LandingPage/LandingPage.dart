import 'dart:js';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width, BuildContext context) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Starcue \nDevelopers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "스타큐 개발자홈페이지. web",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => _HomePageState()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 25.0),
                child: Text(
                  "Our Packages",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/icon.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2, context),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width, context),
          );
        }
      },
    );
  }
}

class _HomePageState extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Chat App"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: "   Send a Message"),
                onSubmitted: _handleSubmited,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            FlatButton(
              onPressed: () {
                _handleSubmited(textEditingController.text);
                Navigator.pop(context);
              },
              child: Text("Send"),
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }

  void _handleSubmited(String text) {
    Logger().d(text);
    textEditingController.clear();
  }
}
