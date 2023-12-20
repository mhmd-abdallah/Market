// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'CustomWidget.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      SizedBox(
        width: 300,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/Shopping_cart.png", height: 200, width: 200),
                Column(
                  children: [
                    TextFieldWidget(
                        "Username",
                        const Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                        "Email",
                        const Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                        "Password",
                        const Icon(
                          Icons.lock_outlined,
                          color: Colors.grey,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                      "Confirm Password",
                      const Icon(
                        Icons.lock_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[900], // Background color
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Border radius
                  ),
                  fixedSize: const Size(100, 40)),
              child: const Text("Sign up", style: TextStyle(fontSize: 15)),
            ),
            Row(
              children: [
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

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(this.hintText, this.icon, {super.key});
  final String hintText;
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        onTap: () {
          if (!focusNode.hasFocus) {
            focusNode.requestFocus();
          }
        },
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText:
              focusNode.hasFocus || controller.text.isNotEmpty ? '' : hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}