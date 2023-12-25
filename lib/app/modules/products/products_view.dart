import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/home/widgets/home_custom_widget.dart';
import 'package:grocery_app/app/modules/product_detail/product_detail_view.dart';
import 'package:grocery_app/utils/jsondata.dart';

class ProductsView extends StatefulWidget {
  ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  List<dynamic> products = groceryProduct['categories'][0]['products'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                ),
              ),
              Text(
                'Vegetables 🌽',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
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
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    title: product['name'],
                    image: product['imageUrl'],
                    price: product['price'],
                    detail: product['description'],
                  ),
                ),
              );
            },
            child: ProductCard2(
              t2: '${product['price']}',
              image: product['imageUrl'],
              title: product['name'],
            ),
          );
        },
      ),
    );
  }
}
