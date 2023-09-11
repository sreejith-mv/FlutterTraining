import 'package:flutter/material.dart';
import 'package:hello_world/my_app_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Dashboard 1'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            generateBox(context, Colors.blue, generateBox(context, Colors.red, Center(child: Text('This is a text'),))),
            SizedBox(height: 20,),
            generateBox(context, Colors.green, Container()),
            
          ],
        ),
      ),
    );
  }

  Widget generateBox(BuildContext context, Color color, Widget child) {
    return Container(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: color),
              child: child,
            );
  }
}
