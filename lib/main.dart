import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Counter(increment: 2),
            Counter(increment: 1),
          ],
        ),
        appBar: AppBar(
          title: Text("App bar"),
        ),
      ),
    ),
  );
}

class Counter extends StatefulWidget {
  int increment = 1;

  Counter({Key key = const Key("counter_key"), required this.increment})
      : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int value = 0;

  increaseValue() {
    setState(() {
      value = value + widget.increment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text("Value: $value", style: TextStyle(fontSize: 22)),
        onPressed: () {
          increaseValue();
        });
  }
}
