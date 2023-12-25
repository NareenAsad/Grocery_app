import 'package:flutter/material.dart';
import 'package:grocery_app/app/data/product_model.dart';

class ProductCountItem extends StatelessWidget {
  final ProductModel product;
  const ProductCountItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.remove,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
