import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    _counter++;
    if(_counter % 5 == 0) {
      setState(() {
      });
    }
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton (
          onPressed: _increment,
          child: Text(
            'Increment'
          )
        ),
        ElevatedButton (
          onPressed: _decrement,
          child: Text(
            'Decrement'
          )
        ),
        SizedBox(
          width: 16,
        ),
        Text('Count: $_counter')
      ]
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: Center(
        child: Counter()
      )
    )
  )
);