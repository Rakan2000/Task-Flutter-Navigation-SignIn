import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  const SignedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(""),
        Image.asset(
          'assets/images/check.png',
          height: 100,
          width: 100,
        )
      ],
    ));
  }
}
