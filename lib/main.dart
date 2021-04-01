import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestAppState();
  }
}

class TestAppState extends State<TestApp> {
  var questionIndex = 0;
  sms() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = ['Holla Amigo?', 'Amigo!!', 'Fixed Account'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
            onPressed: sms,
            child: Text('Holla!'),
          ),
        ]),
      ),
    );
  }
}
