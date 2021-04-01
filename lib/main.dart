import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  var _questionIndex = 0;
  _sms() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
          Text(questions[_questionIndex]),
          RaisedButton(
            onPressed: _sms,
            child: Text('Holla!'),
          ),
        ]),
      ),
    );
  }
}
