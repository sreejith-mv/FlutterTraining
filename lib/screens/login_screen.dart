import 'package:flutter/material.dart';
import 'package:hello_world/screens/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/logo.png',
                height: 30,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Login with your Credentials',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 30),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        labelText: "Email",
                        // border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                        labelText: "Password",
                        // border: OutlineInputBorder(),
                      ),
                       validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        if(emailController.text == "sreejith@mail.com" && passwordController.text == "password") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen(),));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invaild email or password")));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invaild email or password")));
                      }
                    }, child: Text('Login'))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
