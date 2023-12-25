import 'package:flutter/material.dart';

class CircularCard extends StatelessWidget {
  String image;

  CircularCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CircleBorder(side: BorderSide(color: Colors.grey)),
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(image),
        backgroundColor: Colors.grey,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  String t2;
  String image;
  String title;

  ProductCard({
    required this.t2,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 150,
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              image,
              height: 115,
              width: 115,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              t2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 70),
                MaterialButton(
                  onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
