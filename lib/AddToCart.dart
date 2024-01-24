// ignore_for_file: file_names, unused_import, prefer_const_constructors, avoid_returning_null_for_void, avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables, unused_element, sort_child_properties_last, sized_box_for_whitespace, non_constant_identifier_names, unused_label, unused_local_variable, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:market/NavigationBar.dart';

import 'SlideBar.dart';
import 'cartItem.dart';
import 'constants/colors.dart';
import 'product_model.dart';

class AddToCart extends StatefulWidget {
  final List<Product> products;
  final int initialQuantity;

  AddToCart({
    Key? key,
    required this.products,
    this.initialQuantity = 1,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  //int quantity = 0;
  void deleteItem(Product product) {
    setState(() {
      widget.products.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SlideBar(),
      appBar: AppBar(
        toolbarHeight: 80.5,
        backgroundColor: orangeHex,
        title: Text('Shopping Cart'),
        centerTitle: true,
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
                    for (var product in widget.products)
                      CartItem(
                        product: product,
                        initialQuantity: widget.initialQuantity,
                        onDelete: () {
                          setState(() {
                            widget.products.remove(product);
                          });
                        },
                      ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
  // Widget CartItem(
  //     String itemName, String itemImage, double itemPrice) {
  //   double newPrice = itemPrice * quantity;
  //   Container(
  //     width: 60,
  //     height: 60,
  //     child: FloatingActionButton(
  //         onPressed: () {},
  //         backgroundColor: Colors.transparent,
  //         child: Icon(
  //           Icons.delete,
  //           color: Colors.amber,
  //         )),
  //   );

  //   return Card(
  //     color: greenHex,
  //     child: Padding(
  //       padding: const EdgeInsets.all(6.0),
  //       child: Column(
  //         //crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               CircleAvatar(
  //                 radius: 35.0,
  //                 backgroundImage: AssetImage(
  //                   itemImage,
  //                 ),
  //               ),
  //               Text(itemName,
  //                   style:
  //                       TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
  //               FloatingActionButton(
  //                   onPressed: () {},
  //                   elevation: 0.0,
  //                   backgroundColor: Colors.transparent,
  //                   child: Icon(
  //                     Icons.delete,
  //                     color: Colors.black87,
  //                   )),
  //             ],
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('                          \$$newPrice',
  //                   style: TextStyle(
  //                       fontSize: 24.0, fontWeight: FontWeight.normal)),
  //             ],
  //           ),
  //           SizedBox(height: 10.0),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               Container(
  //                 height: 30,
  //                 width: 110,
  //                 decoration: BoxDecoration(
  //                   color: orangeHex,
  //                   borderRadius: BorderRadius.circular(10),
  //                 ),
  //                 child: Row(
  //                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     IconButton(
  //                       onPressed: () {
  //                         setState(() {
  //                           quantity--;
  //                         });
  //                       },
  //                       icon: Icon(
  //                         Icons.remove,
  //                         size: 10,
  //                         color: Color(0xffffffff),
  //                       ),
  //                     ),
  //                     Text(
  //                       '$quantity',
  //                       style: TextStyle(
  //                           color: Color.fromARGB(255, 255, 255, 255),
  //                           fontSize: 15),
  //                     ),
  //                     IconButton(
  //                       onPressed: () {
  //                         setState(() {
  //                           quantity++;
  //                         });
  //                       },
  //                       icon: Icon(
  //                         Icons.add,
  //                         size: 10,
  //                         color: Color(0xffffffff),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }