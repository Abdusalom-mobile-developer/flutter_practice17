import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_practice17/pages/home_page.dart';
import 'package:flutter_practice17/pages/signin_page.dart';

class SignupPage extends StatefulWidget {
  static final String id = "signup_page";
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailAdressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _checkContorollers() {
    if (_userNameController.text.toLowerCase() == "abdusalom" &&
        _emailAdressController.text.toLowerCase() == "abdusalom@gmail.com" &&
        _passwordController.text.toLowerCase() == "freedom") {
      Navigator.pushReplacementNamed(context, HomePage.id);
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
            "Sign Up",
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
              controller: _userNameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Username",
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
              controller: _emailAdressController,
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
                  _checkContorollers();
                },
                child: Text(
                  "Sign Up",
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
                "Already have an account?",
                style: TextStyle(fontSize: 19, fontFamily: "Signika"),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, SigninPage.id);
                },
                child: Text(
                  "Sign In",
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
  }
}
