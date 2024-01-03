import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget(this.drawer, this.child, {super.key});
  final Widget child;
  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: drawer,
      appBar: AppBar(),
      body: Material(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset("assets/images/LOGO_Karim Supermarket.png",
                      width: screenWidth * 0.4, height: screenHeight * 0.4),
                  const SizedBox(
                    height: 20,
                  ),
                  child,
                  Image.asset(
                    "assets/images/Untitled-1.png",
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
