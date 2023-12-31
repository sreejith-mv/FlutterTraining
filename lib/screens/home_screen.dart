import 'package:flutter/material.dart';
import 'package:hello_world/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const path = "Home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:'Home'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          "This is my first app",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "This is my first app body line",
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],),
    );
  }
}
