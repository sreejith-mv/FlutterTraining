import 'package:flutter/material.dart';
import 'package:hello_world/my_app_bar.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  void initState() {
    super.initState();

    counter = 10;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Counter"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Text('Counter value is $counter'),
          ElevatedButton(onPressed: () {
           setState(() {
              counter = counter + 1;
           });
          }, child: Text('Incremnt')),
          ElevatedButton(onPressed: () {
            setState(() {
                counter = counter - 1;
            });
          }, child: Text('Decrement'))
        ]),
      ),
    );
  }
}
