import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  static const path = "Counter";
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(children: [
        Text(
          "Counter Value is $counter",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
            },
            child: const Text('Increment')),
        ElevatedButton(
            onPressed: () {
              setState(() {
                counter = counter - 1;
              });
            },
            child: const Text('Decrement'))
      ]),
    );
  }
}
