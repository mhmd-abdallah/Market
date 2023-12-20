import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget(this.child, {super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Image.asset("assets/LOGO_Karim Supermarket.png",
                    width: 200, height: 200),
                const SizedBox(
                  height: 20,
                ),
                child,
                Image.asset(
                  "assets/Untitled-1.png",
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}