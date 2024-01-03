import 'package:flutter/material.dart';
import 'CustomWidget.dart';
import 'SignupScreen.dart';
import 'Login.dart';
import 'buttons.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      Drawer(),
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
              "assets/images/Untitled-2.png",
              width: 200,
              height: 200,
            ),
            SizedBox(
              child: Transform.translate(
                offset: Offset(0, MediaQuery.of(context).size.height * -0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    button(
                      "Sign up",
                      () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      Colors.green[900],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    button(
                      "Log in",
                      () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      Colors.orange[800],
                    )
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
