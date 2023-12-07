import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_sign/views/signed_in.dart';

//import 'package:navigation_sign/models/signed_in.dart';
String userName = "R";
String passWord = "1122";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final NametextController = TextEditingController();
  final PasswordtextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void goCorrectUser() {
      if (NametextController == userName &&
          PasswordtextController == passWord) {
        GoRouter.of(context).go("/signed_in");
      } else {}
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign in"),
          backgroundColor: const Color.fromARGB(255, 7, 255, 61),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: NametextController,
              decoration: InputDecoration(
                hintText: "Type your User Name",
                prefixIcon: Icon(
                  Icons.abc,
                  color: const Color.fromARGB(66, 7, 7, 7),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                labelText: 'User Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: PasswordtextController,
              decoration: InputDecoration(
                hintText: "Type your Password",
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Colors.black26,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                goCorrectUser();
              },
              child: const Text("Sign In"),
            ),
          ],
        )),
      ),
    );
  }
}
