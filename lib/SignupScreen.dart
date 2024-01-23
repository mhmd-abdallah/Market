import 'package:flutter/material.dart';
import 'package:market/Login.dart';
import 'package:market/buttons.dart';

import 'CustomWidget.dart';
import 'textField.dart';
import 'viewingProducts.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      Drawer(),
      SizedBox(
        width: 600,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Untitled-2.png"),
                    fit: BoxFit.contain),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      TextFieldWidget(
                          "Username",
                          const Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                          widget.usernameController),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget(
                          "Email",
                          const Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                          widget.emailController),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget(
                          "Password",
                          const Icon(
                            Icons.lock_outlined,
                            color: Colors.grey,
                          ),
                          widget.passwordController),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget(
                          "Confirm Password",
                          const Icon(
                            Icons.lock_outlined,
                            color: Colors.grey,
                          ),
                          widget.confirmPasswordController),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
            button("Sign up", () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => viewingProducts()),
              );
            }, Colors.green[900]),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                Transform.translate(
                  offset: Offset(-10, 0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isClicked = !isClicked;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      });
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 12,
                        decoration: isClicked
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: Colors.orange[800],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
