import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/profile/profile_view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> items = [
    'Red Onions',
    'Fresh Tomatos',
    'Potatos',
    'Red Beens',
  ];

  List<int> prices = [
    45,
    45,
    45,
    45,
  ];

  List<int> quantities = [
    1,
    1,
    1,
    1,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text(
          'CART',
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                    onTap: () {},
                    trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Text("Check Out",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(0, 153, 89, 1)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 90, vertical: 17)),
              )),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
