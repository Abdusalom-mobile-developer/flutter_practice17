import 'package:flutter/material.dart';
import 'package:flutter_practice17/pages/home_page.dart';
import 'package:flutter_practice17/pages/signin_page.dart';
import 'package:flutter_practice17/pages/signup_page.dart';
import 'package:flutter_practice17/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SplashPage.id: (context) => SplashPage(),
        SigninPage.id: (context) => SigninPage(),
        SignupPage.id: (context) => SignupPage(),
      },
    );
  }
}
