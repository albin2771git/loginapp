import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginapp/Screens/homeScreen.dart';

import 'loginpage.dart';

class LoginSucess extends StatefulWidget {
  const LoginSucess({super.key});

  @override
  State<LoginSucess> createState() => _LoginSucessState();
}

class _LoginSucessState extends State<LoginSucess> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Color.fromARGB(255, 2, 12, 68),
          ],
        )),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Sucessfully Registered",
                style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
      )),
    );
    ;
  }
}
