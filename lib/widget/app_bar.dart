import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.network(
        "https://companieslogo.com/img/orig/TCS.NS-7401f1bd.png?t=1631949260",
        height: 30,
      ),
      // title: Image.asset(
      //   'assets/images/logo.png',
      //   height: 30,
      // ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
      ],
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.home),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
