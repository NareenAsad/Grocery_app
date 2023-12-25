import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/home/widgets/home_custom_widget.dart';
import 'package:grocery_app/app/modules/product_detail/product_detail_view.dart';
import 'package:grocery_app/app/modules/products/products_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Hides the default back arrow
          title: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/5.png'),
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Amelia Barlow',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'My Flat',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search category',
                  hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.green),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/pic4.png',
                ),
                SizedBox(height: 20),
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories 😋',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductsView()),
                            );
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          CircularCard(
                              image: 'assets/images/grocery_images/apple.png'),
                          CircularCard(
                              image:
                                  'assets/images/grocery_images/broccoli.png'),
                          CircularCard(
                              image: 'assets/images/grocery_images/cheese.png'),
                          CircularCard(
                              image: 'assets/images/grocery_images/meat.png')
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best selling 🔥',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ProductDetailPage(
                        //     ),
                        //   ),
                        // );
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          runSpacing: 6,
                          spacing: 6,
                          children: [
                            ProductCard(
                              t2: '1kg, \$4',
                              image:
                                  'assets/images/grocery_images/bellPepper.png',
                              title: 'Bell Pepper Red',
                            ),
                            ProductCard(
                              t2: '1kg, \$45',
                              image:
                                  'assets/images/grocery_images/lambmeat.png',
                              title: 'Lamb Meat',
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ]),
        ],
      ),
    );
  }
}
