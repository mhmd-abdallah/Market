import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(this.hintText, this.icon, TextEditingController controller,
      {super.key});
  final String hintText;
  final TextEditingController controller = TextEditingController();
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width * 0.5,
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        onTap: () {},
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintText,
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
