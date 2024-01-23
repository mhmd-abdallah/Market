import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class viewingProducts extends StatefulWidget {
  viewingProducts({super.key});
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<viewingProducts> {
  double? screenHeight;
  double? screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesome.shopping_bag),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
            ],
          ),
          backgroundColor: Colors.orange[600],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth! * 0.9,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.clear),
                                  ),
                                ),
                                Image.asset("assets/images/969850-01.jpeg",
                                    width: screenWidth! * 0.9,
                                    height: screenHeight! * 0.2),
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight! * 0.02),
                        ],
                      ),
                      Container(
                        width: screenWidth! * 0.8,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: screenHeight! * 0.18,
                                width: screenWidth! * 0.8,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '16,000',
                                      style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.orange[800],
                                      ),
                                    ),
                                    Text(
                                      'Wooden Bakery White Large',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green[900],
                                      ),
                                    ),
                                    Text(
                                      '1 kg - 7 loaves',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green[900],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: screenHeight! * 0.057,
                              decoration: BoxDecoration(
                                color: Colors.green[900],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                //kel l row
                                children: [
                                  Container(
                                    width: screenWidth! * 0.35,
                                    //first part of the row
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: screenWidth! * 0.35,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              //first element of the first part of the row
                                              height: screenHeight! * 0.04,
                                              width: screenHeight! * 0.04,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(7.0),
                                                ),
                                              ),
                                              child: Center(
                                                child: Center(
                                                  child: GestureDetector(
                                                    child: Text(
                                                      '-',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orange[800],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.white),
                                            ),
                                            Container(
                                              //third element of the first part of the row
                                              height: screenHeight! * 0.04,
                                              width: screenHeight! * 0.04,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(7.0),
                                                ),
                                              ),
                                              child: Center(
                                                child: Center(
                                                  child: GestureDetector(
                                                    child: Text(
                                                      '+',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orange[800],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //second part of the row
                                    width: screenWidth! * 0.40,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: screenHeight! * 0.035,
                                        width: screenWidth! * 0.30,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(6.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: Colors.orange[800],
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: screenWidth! * 0.85,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Special Instructions",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.green[900],
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight! * 0.05,
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
                      SizedBox(width: screenWidth! * 0.08),
                      Text(
                        "Related Items",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.green[900],
                        ),
                      ),
                      SizedBox(width: screenWidth! * 0.4),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth! * 0.98,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screenWidth! / 3.25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight! * 0.2,
                              child: Image.asset("assets/images/th (2).jpeg",
                                  width: screenWidth! / 3.3,
                                  height: screenHeight! * 0.1),
                            ),
                            Container(
                              color: Colors.orange[800],
                              height: screenHeight! * 0.2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Picon Cream Cheese Spread",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: const Text(
                                        "120 g - 8 portions",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight! * 0.0057),
                                    Row(
                                      children: [
                                        Text(
                                          "33,000",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          " L.L",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth! * 0.01),
                      Container(
                        width: screenWidth! / 3.25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight! * 0.2,
                              child: Image.asset("assets/images/th (1).jpeg",
                                  width: screenWidth! / 4,
                                  height: screenHeight! * 0.1),
                            ),
                            Container(
                              color: Colors.orange[800],
                              height: screenHeight! * 0.2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Hawa Chicken Brown Eggs",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: const Text(
                                        "15 Eggs",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight! * 0.0057),
                                    Row(
                                      children: [
                                        Text(
                                          "33,000",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          " L.L",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth! * 0.01),
                      Container(
                        width: screenWidth! / 3.25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight! * 0.2,
                              child: Image.asset("assets/images/th.jpeg",
                                  width: screenWidth! / 4,
                                  height: screenHeight! * 0.1),
                            ),
                            Container(
                              color: Colors.orange[800],
                              height: screenHeight! * 0.2,
                              child: Row(
                                children: [
                                  Container(
                                    width: screenWidth! / 3.25 * 0.7,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Picon Cream Cheese Spread",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: const Text(
                                              "240 g",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              height: screenHeight! * 0.0057),
                                          Row(
                                            children: [
                                              Text(
                                                "33,000",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                " L.L",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight! * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
