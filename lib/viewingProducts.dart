import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  cartPage({super.key});
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  double? screenHeight;
  double? screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              )
            ],
          ),
          backgroundColor: Colors.orange[600],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight! * 0.05),
            Container(
              height: screenHeight! * 0.4,
              width: screenWidth! * 0.8,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: Column(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
