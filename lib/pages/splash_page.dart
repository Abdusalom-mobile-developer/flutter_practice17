import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice17/pages/signup_page.dart';

class SplashPage extends StatefulWidget {
  static final String id = "splash_page";
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _screenTimer() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, SignupPage.id);
    });
  }

  @override
  void initState() {
    super.initState();
    _screenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage("assets/images/yamaha_logo.png"),
              height: 175,
              width: 175,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Since 1887",
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "Signika",
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
