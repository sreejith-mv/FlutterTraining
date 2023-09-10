import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const path = "Home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Column(children: [
        Text(
          "This is my first app",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "This is my first app body line",
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ]),
    );
  }
}
