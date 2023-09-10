import 'package:flutter/material.dart';
import 'package:hello_world/widget/app_bar.dart';
import 'package:hello_world/widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Login"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/logo.png', height: 40),
            ),
            const SizedBox(height: 30),
            Text('Login with your Credentials',
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 30),
            const LoginForm()
          ],
        ),
      ),
    );
  }
}
