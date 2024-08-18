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
        body: Center(
          child: Image(
            image: AssetImage("assets/images/motorbike.png"),
            height: 200,
            width: 300,
            fit: BoxFit.cover,
          ),
        ));
  }
}


// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Center(
//               child: Text(
//                 "Hello ${HomePage.username}.",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontFamily: "Signika",
//                     fontSize: 38,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 45,
//             ),
//             Center(
//               child: Image(
//                 image: AssetImage("assets/images/motorbike.png"),
//                 height: 200,
//                 width: 300,
//                 fit: BoxFit.cover,
//               ),
//             )
//           ]),



// Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 20, bottom: 80),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Text(
//                       "Hello ${HomePage.username}.",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: "Signika",
//                           fontSize: 38,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 250),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Image(
//                       image: AssetImage("assets/images/motorbike.png"),
//                       height: 200,
//                       width: 300,
//                       fit: BoxFit.cover,
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         )