// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:market/Constants/Colors.dart';
import 'package:market/product_model.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  final Product product;
  int initialQuantity;
  final VoidCallback? onDelete;

  CartItem({
    Key? key,
    required this.product,
    this.initialQuantity = 1,
    required this.onDelete,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    double newPrice = widget.product.price * widget.initialQuantity;

    return Card(
      color: greenHex,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage(widget.product.image),
                ),
                Text(
                  widget.product.name,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                // Delete button
                if (widget.onDelete != null)
                  FloatingActionButton(
                    onPressed: widget.onDelete,
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.delete,
                      color: Colors.black87,
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('                          \$$newPrice',
                    style: TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.normal)),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (widget.initialQuantity > 0) {
                              widget.initialQuantity--;
                              if (widget.initialQuantity == 0) {
                                widget.onDelete
                                  ?.call();
                              }
                            } 

                            // while (widget.initialQuantity > 1) {
                            //   widget.initialQuantity--;
                            //   //widget.onDelete;
                            // }
                            // if (widget.onDelete != null) {
                            //   widget.onDelete;
                            // }
                          });
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${widget.initialQuantity}',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            widget.initialQuantity++;
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
