import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String username = "Abdusalom";
  static String emailAddress = "abdusalom@gmail.com";
  static String password = "freedom";
  static String id = "home_page";
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Yamaha Company",
          style: TextStyle(color: Colors.white, fontFamily: "Signika"),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Welcome to Yamaha",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Signika",
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "${HomePage.username}",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Signika",
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
    );
  }
}
