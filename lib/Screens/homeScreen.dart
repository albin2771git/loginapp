import 'package:flutter/material.dart';
import 'package:loginapp/Screens/SplashScreen.dart';
import 'package:loginapp/Screens/registerpage.dart';

import 'loginpage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => loginPage()));
                },
                child: Text("login ")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => SplashScreen()));
                },
                child: Text("Register ")),
          ],
        ),
      ),
    );
  }
}
