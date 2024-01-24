// ignore_for_file: file_names, unused_import, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market/Constants/Colors.dart';
import 'package:market/NavigationBar.dart';
import 'package:market/SlideBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SlideBar(),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        child: FloatingActionButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => HomeScreen(),
              //     ));
            },
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/images/floatingButton.png')),
      ),
      appBar: AppBar(
        toolbarHeight: 80.5,
        backgroundColor: orangeHex,
        title: TextField(
          onChanged: (value) {},
          style: TextStyle(
            color: Color(0xff5e5e60),
            fontSize: 12,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white, // Set the background color to white
            hintText: 'Search for products ',
            prefixIcon: Icon(Icons.search, color: Color(0xff5e5e60)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: greenHex),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/homebg.jpg'),
            opacity: 0.05,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.none),
                          gradient: greenOrange),
                      child: TextField(
                        onChanged: (value) {},
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 10,
                        ),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Sadia,South Lebanon',
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon:
                              Icon(Icons.location_on, color: Colors.white),
                          suffixIcon:
                              Icon(Icons.arrow_drop_down, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "   Top Categories",
                      //  textAlign: TextAlign.center,
                      style: TextStyle(
                          color: greenHex,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ProductCard(
                            imageUrl: 'assets/images/Dairy.png',
                            scale: 8.5,
                            ProductText: 'Dairy'),
                        ProductCard(
                            imageUrl: 'assets/images/bavarages.jpg',
                            scale: 11.5,
                            ProductText: 'Bavarages'),
                        ProductCard(
                            imageUrl: 'assets/images/fishes.png',
                            scale: 6.5,
                            ProductText: 'Fishes'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ProductCard(
                            imageUrl: 'assets/images/Dairy.png',
                            scale: 8.5,
                            ProductText: 'Dairy'),
                        ProductCard(
                            imageUrl: 'assets/images/bavarages.jpg',
                            scale: 11.5,
                            ProductText: 'Bavarages'),
                        ProductCard(
                            imageUrl: 'assets/images/fishes.png',
                            scale: 6.5,
                            ProductText: 'Fishes'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "   Daily  Offers",
                      //  textAlign: TextAlign.center,
                      style: TextStyle(
                          color: greenHex,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ProductCard(
                            imageUrl: 'assets/images/Offer5.jpg', scale: 30.5),
                        ProductCard(
                            imageUrl: 'assets/images/Offer2.jpg', scale: 30.5),
                        SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ProductCard(
                            imageUrl: 'assets/images/Offer1.jpg', scale: 30.5),
                        ProductCard(
                            imageUrl: 'assets/images/Offer3.jpg', scale: 30.5),
                        ProductCard(
                            imageUrl: 'assets/images/Offer1.jpg', scale: 30.5),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

Widget ProductCard(
    {required String imageUrl, required double scale, String? ProductText}) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 190,
          height: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: greenOrange),
          child: Image.asset(
            imageUrl,
            //  height: 20,
            scale: scale,
            // fit: BoxFit.contain,
          ),
        ),
        ProductText != null
            ? Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: orangeHex,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  ProductText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            : SizedBox(),
      ],
    ),
  );
}
