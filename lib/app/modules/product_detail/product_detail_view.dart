import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/cart/cart_view.dart';

class ProductDetailPage extends StatefulWidget {
  String image;
  String price;
  String title;
  String detail;
  ProductDetailPage({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.detail,
  }) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 0;

  int itemCount = 0;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset(
              widget.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (itemCount > 0) {
                              itemCount--;
                            }
                          });
                        },
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        itemCount
                            .toString(), // Display the itemCount between add and remove icons
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            itemCount++;
                          });
                        },
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "${widget.price}",
                    style: TextStyle(
                        color: Colors.red, fontFamily: 'Poppins', fontSize: 20),
                  ),
                  const Text(
                    "Details: ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.detail,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/1.png'),
                          Text('100%',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.green)),
                          Text('Organic',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.grey)),
                        ],
                      ),
                      SizedBox(width: 100),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/2.png'),
                          Text('1 Year',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.green)),
                          Text('Expiration',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/3.png'),
                          Text('8.4',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.green)),
                          Text('Reviews',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.grey)),
                        ],
                      ),
                      SizedBox(width: 100),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/4.png'),
                          Text('80 kcal',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.green)),
                          Text('100 GRM',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartScreen()));
                      },
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 80, vertical: 17)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
