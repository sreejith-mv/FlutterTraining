import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const path = "Dashboard";
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(title: const Text('Dashboard')),
        body: getContainer(
          color: Colors.blue,
          child: getContainer(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getContainer(
                      height: 100,
                      color: Colors.red,
                      // child: getCenterText("Hello 1"),
                      child: getCenterText(arguments['email']),
                    ),
                    getContainer(
                      height: 100,
                      color: Colors.green,
                      child: getCenterText("Hello 2"),
                    ),
                    getContainer(
                      height: 100,
                      color: Colors.amber,
                      child: getCenterText("Hello 3"),
                    ),
                    getContainer(
                      height: 100,
                      color: Colors.blue,
                      child: getCenterText("Hello 4"),
                    ),
                    getContainer(
                      height: 100,
                      color: Colors.brown,
                      child: getCenterText("Hello 5"),
                    ),
                    getContainer(
                      height: 100,
                      color: Colors.indigoAccent,
                      child: getCenterText("Hello 6"),
                    ),
                    getContainer(
                      height: 100,
                      color: Colors.deepOrange,
                      child: getCenterText("Hello 7"),
                    ),
                  ],
                ),
              )),
        ));
  }

  Widget getCenterText(String text) {
    return Center(
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget getContainer(
      {Color? color, Widget? child, double height = double.infinity}) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      // height: double.infinity,
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: child,
    );
  }
}
