import 'package:flutter/material.dart';

import 'SlideBar.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  double? screenHeight;
  double? screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const SlideBar(),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("My Shopping List"),
      ),
      body: Column(
        children: [
          SizedBox(height: screenHeight! * 0.02),
          ListOfItems(),
          SizedBox(height: screenHeight! * 0.02),
          ListOfItems(),
          SizedBox(height: screenHeight! * 0.02),
          ListOfItems(),
          SizedBox(height: screenHeight! * 0.02),
          ListOfItems(),
          SizedBox(height: screenHeight! * 0.05),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Total: 132,000 L.L",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(height: screenHeight! * 0.05),
          Center(
            child: button(),
          ),
        ],
      ),
    );
  }

  Widget ListOfItems() {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: screenHeight! * 0.1,
          width: screenWidth! * 0.05,
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.clear),
            ),
          ),
        ),
        SizedBox(width: screenWidth! * 0.03),
        Container(
          width: screenWidth! * 0.9,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          height: screenHeight! * 0.1,
          child: Row(
            children: [
              Image.asset(
                "assets/images/th (2).jpeg",
                width: screenWidth! * 0.15,
                height: screenHeight! * 0.15,
              ),
              Container(
                width: screenWidth! * 0.26,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Picon Cream Cheese Spread",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "120 g - 8 portions",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth! * 0.18,
                child: Container(
                  width: screenWidth! * 0.18,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //first element
                        height: screenHeight! * 0.035,
                        width: screenHeight! * 0.032,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        child: Center(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange[800],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        '1',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      Container(
                        //third element
                        height: screenHeight! * 0.035,
                        width: screenHeight! * 0.033,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.orange[800],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: screenWidth! * 0.02),
              Container(
                width: screenWidth! * 0.18,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: screenHeight! * 0.1 / 3,
                    child: const Text(
                      "33,000 L.L",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget button() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Confirm Order"),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[900], // Background color
          foregroundColor: Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Border radius
          ),
          fixedSize: Size(170, 40)),
    );
  }
}
