import 'package:flutter/material.dart';
import 'package:navigation_sign/views/home_screen.dart';

class SignedIn extends StatelessWidget {
  const SignedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Sign in"),
          backgroundColor: const Color.fromARGB(255, 7, 255, 61),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome ${NametextController.text}",
                  style: TextStyle(fontSize: 30),
                ),
                Image.asset(
                  'assets/images/check.png',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ],
        ));
  }
}
