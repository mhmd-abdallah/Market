import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button(this.buttonText, this.onTap, this.color, {super.key});
  void Function() onTap;
  final String buttonText;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, // Background color
          foregroundColor: Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Border radius
          ),
          fixedSize: Size(100, 40)),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
