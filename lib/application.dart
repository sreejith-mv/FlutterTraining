import 'package:flutter/material.dart';
import 'package:hello_world/app_routes.dart';
import 'package:hello_world/app_theme.dart';
import 'package:hello_world/screens/dashboard.dart';
import 'package:hello_world/screens/home.dart';
import 'package:hello_world/screens/list_screen.dart';
import 'package:hello_world/screens/login_screen.dart';

import 'screens/counter.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      theme: AppTheme.theme,
      home: const ListScreen(),
      // home: const LoginScreen(),
      // routes: {
      //   '/': (context) => LoginScreen(),
      //   '/dashboard': (context) => Dashboard(),
      //   '/home': (context) => Home()
      // },
      onGenerateRoute: (settings) => AppRoutes.routes(settings),
    );
  }
}
