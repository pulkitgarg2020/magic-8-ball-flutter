import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ask Me Anything",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int answer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: TextButton(
            onPressed: () {
              setState(() {
                answer = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset("images/ball$answer.png"),
          ),
        ),
      ),
    );
  }
}
