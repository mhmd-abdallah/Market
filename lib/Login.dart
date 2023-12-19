// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, must_be_immutable, unused_element, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:market/SlideBar.dart';


class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
       drawer: SlideBar(),
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.2,
            width: screenWidth * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/LOGO_Karim Supermarket.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Expanded(
            child: Container(
            
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Shopping_cart.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _inputField('Enter your email', emailController),
                    SizedBox(height: 10),
                    _inputField('Enter your password', passwordController),
                    SizedBox(height: 10),
                    _loginBtn(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.45,
            width: screenWidth * 1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/belowBg.png',
                ),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
    );
  
  
  }

  Widget _inputField(String hintText, TextEditingController controller) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFF6A8F6E)));

    return TextField(
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        //  Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF7f8c63),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 90,
          vertical: 19,
        ),
        child: Text(
          'Log in',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
