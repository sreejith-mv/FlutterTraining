import 'package:flutter/material.dart';
import 'package:hello_world/screens/counter.dart';
import 'package:hello_world/screens/dashboard.dart';
import 'package:hello_world/screens/home.dart';
import 'package:hello_world/screens/login_screen.dart';

class AppRoutes {
  static Route<dynamic> routes(settings) {
    switch (settings.name) {
      case Home.path:
        return MaterialPageRoute(
          builder: (context) => const Home(),
          settings: settings,
        );

      case Dashboard.path:
        return MaterialPageRoute(
          builder: (context) => const Dashboard(),
          settings: settings,
        );
      case Counter.path:
        return MaterialPageRoute(
          builder: (context) => const Counter(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
    }
  }
}
