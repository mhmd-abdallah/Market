// ignore_for_file: file_names

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
                Image.asset("assets/images/LOGO_Karim Supermarket.png",
                    width: 200, height: 200),
                const SizedBox(
                  height: 20,
                ),
                child,
                Image.asset(
                  "assets/images/belowBg.png",
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