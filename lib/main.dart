// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:market/AddToCart.dart';
import 'package:market/CustomWidget.dart';
import 'package:market/HomeScreen.dart';

import 'package:market/Login.dart';
import 'package:market/LoginOrSignup.dart';
import 'package:market/NavigationBar.dart';
import 'package:market/Signup.dart';
import 'package:market/SlideBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  AddToCart(),
    );
  }
}

