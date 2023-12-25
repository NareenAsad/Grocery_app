import 'package:flutter/material.dart';
import 'package:grocery_app/app/components/product_count_items.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}); // Fixed syntax for the constructor

  @override
  Widget build(BuildContext context) {
    var product; // Initialize this variable with appropriate data

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 330,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/2.png',
                    fit: BoxFit.fill,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: 24,
                  left: 24,
                  right: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    product
                        .image, // Make sure product.image is initialized properly
                    width: 250,
                    height: 225,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  product.name,
                ),
                ProductCountItem(
                    product: product), // Move this widget to a new line
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextButton(
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
