// ignore_for_file: prefer_const_constructors, file_names, unused_import, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, avoid_unnecessary_containers

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market/AddToCart.dart';
import 'package:market/Constants/Colors.dart';
import 'package:market/HomeScreen.dart';
import 'package:market/Login.dart';
import 'package:market/Signup.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      //height: 20,
      //  backgroundColor: Colors.transparent,
      //  bottomNavigationBar: CurvedNavigationBar(
      color: greenHex,
      buttonBackgroundColor: orangeHex,
      animationDuration: Duration(milliseconds: 400),
      backgroundColor: Colors.transparent,
      items: [
        GestureDetector(
            onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ))
                },
            child: Image.asset(
              'assets/images/Asset 2@4x.png',
              height: 20,
              width: 20,
            )),
        Image.asset(
          'assets/images/Asset 3@4x.png',
          height: 20,
          width: 20,
        ),
        GestureDetector(
            onTap: () => {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => AddToCart(products: [],),
                  //     ))
                },
            child: Image.asset(
              'assets/images/Asset 4@4x.png',
              height: 20,
              width: 20,
            )),
        Image.asset(
          'assets/images/Asset 5@4x.png',
          height: 20,
          width: 20,
        ),
        // GestureDetector(
        //     onTap: () => {

        //           // Navigator.push(
        //           //     context,
        //           //     MaterialPageRoute(
        //           //       builder: (context) => Login(),
        //           //     ))
        //         },
        //     child: Icon(
        //       Icons.home_sharp,
        //       color: Colors.white,
        //     )),
        // InkWell(
        //     onTap: () => {
        //           // Navigator.push(
        //           //     context,
        //           //     MaterialPageRoute(
        //           //       builder: (context) => Login(),
        //           //     ))
        //         },
        //     child: Icon(
        //       Icons.manage_search,
        //       color: Colors.white,
        //     )),
        // GestureDetector(
        //     onTap: () => {
        //           // Navigator.push(
        //           //     context,
        //           //     MaterialPageRoute(
        //           //       builder: (context) => Signup(),
        //           //     ))
        //         },
        //     child: Icon(
        //       Icons.store_mall_directory_outlined,
        //       color: Colors.white,
        //     )),
        // GestureDetector(
        //     onTap: () => {
        //           // Navigator.push(
        //           //     context,
        //           //     MaterialPageRoute(
        //           //       builder: (context) => Signup(),
        //           //     ))
        //         },
        //     child: Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     )),

        // IconButton(
        //     onPressed: () {},
        //     icon: Image.asset('assets/images/Asset 2@4x.png')),
        // IconButton(
        //     onPressed: () {},
        //     icon: Image.asset('assets/images/Asset 3@4x.png')),
        // IconButton(
        //     onPressed: () {},
        //     icon: Image.asset('assets/images/Asset 4@4x.png')),
        // IconButton(
        //     onPressed: () {},
        //     icon: Image.asset('assets/images/Asset 5@4x.png')),
      ],
      //));
    );
  }
}
