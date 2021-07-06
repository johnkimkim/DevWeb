import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
