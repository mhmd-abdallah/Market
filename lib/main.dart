// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:market/AddToCart.dart';
import 'package:market/CustomWidget.dart';
import 'package:market/HomeScreen.dart';

import 'package:market/Login.dart';
import 'package:market/LoginOrSignup.dart';
import 'package:market/NavigationBar.dart';
import 'package:market/Signup.dart';
import 'package:market/SlideBar.dart';
import 'package:market/product_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  final List<Product> products = [
    Product(
      name: 'Beverages',
      image: 'assets/images/fishes.png',
      price: 2.99,
    ),
    Product(
      name: 'Snacks',
      image: 'assets/images/fishes.png',
      price: 1.99,
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddToCart(
        products: products,
        initialQuantity: 1,
      ),
    );
  }
}


