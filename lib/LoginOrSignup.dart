// ignore_for_file: avoid_unnecessary_containers, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market/Login.dart';
import 'package:market/Signup.dart';
import 'CustomWidget.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      Container(
        child: Column(
          children: [
            Text(
              "Welcome To",
              style: TextStyle(
                color: Colors.orange[800],
                fontSize: 22,
                letterSpacing: 1.3,
              ),
            ),
            Text(
              "Karim Supermarket",
              style: TextStyle(
                color: Colors.green[900],
                fontSize: 22,
                fontWeight: FontWeight.bold,
                height: 1.0,
                letterSpacing: 1.1,
              ),
            ),
            Image.asset(
              "assets/images/Shopping_cart.png",
              width: 200,
              height: 200,
            ),
            SizedBox(
              child: Transform.translate(
                offset: Offset(0, MediaQuery.of(context).size.height * -0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.green[900], // Background color
                          foregroundColor: Colors.white, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Border radius
                          ),
                          fixedSize: Size(100, 40)),
                      child:
                          const Text("Sign up", style: TextStyle(fontSize: 15)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.orange[800], // Background color
                          foregroundColor: Colors.white, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Border radius
                          ),
                          fixedSize: Size(100, 40)),
                      child: const Text(
                        "Log in",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}