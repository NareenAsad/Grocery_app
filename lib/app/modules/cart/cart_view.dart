import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/profile/profile_view.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> items = [
    'Red Onions',
    'Fresh Tomatoes',
    'Potatoes',
    'Red Beans',
  ];

  List<int> prices = [
    45,
    30,
    55,
    4,
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
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        title: Text(
          'CART',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          int itemCount = quantities[index]; // Each item has its own count

          return Card(
            color: Colors.white,
            child: ListTile(
              onTap: () {},
              title: Text(items[index],
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              subtitle: Text('Price: \$${prices[index]}',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.red,
                      fontWeight: FontWeight.w500)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (itemCount > 0) {
                          itemCount--;
                          quantities[index] = itemCount;
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
                    itemCount.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        itemCount++;
                        quantities[index] = itemCount;
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
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
          child: Text(
            'Check Out',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(0, 153, 89, 1)),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 90, vertical: 17),
            ),
          ),
        ),
      ),
    );
  }
}
