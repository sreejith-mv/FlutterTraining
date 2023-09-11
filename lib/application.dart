import 'package:flutter/material.dart';
import 'package:hello_world/app_theme.dart';
import 'package:hello_world/screens/counter_screen.dart';
import 'package:hello_world/screens/dashboard_screen.dart';
import 'package:hello_world/screens/home_screen.dart';
import 'package:hello_world/screens/list_screen.dart';
import 'package:hello_world/screens/login_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      theme: AppTheme.theme,
      home: const LoginScreen(),
    );
  }
}
