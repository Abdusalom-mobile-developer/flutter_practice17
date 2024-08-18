import 'package:flutter/material.dart';
import 'package:flutter_practice17/pages/home_page.dart';
import 'package:flutter_practice17/pages/signup_page.dart';

class SigninPage extends StatefulWidget {
  static final String id = "signin_page";
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController _emailAddressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  _checkControllers() {
    if (_emailAddressController.text.toLowerCase() == HomePage.emailAddress &&
        _passwordController.text.toLowerCase() == HomePage.password) {
      Navigator.pushReplacementNamed(
        context, HomePage.id
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign In",
            style: TextStyle(
                fontSize: 50,
                fontFamily: "Signika",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            width: double.infinity,
            margin: EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              controller: _emailAddressController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: "Signika",
                      fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            width: double.infinity,
            margin: EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              controller: _passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: "Signika",
                      fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightGreen[900],
            ),
            width: double.infinity,
            margin: EdgeInsets.only(left: 25, right: 25),
            child: TextButton(
                onPressed: () {
                  _checkControllers();
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, fontFamily: "Signika"),
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No account yet?",
                style: TextStyle(fontSize: 19, fontFamily: "Signika"),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, SignupPage.id);
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Signika"),
                ),
              )
            ],
          )
        ],
      ),
    );
    ;
  }
}
