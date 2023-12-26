import 'package:flutter/material.dart';

class OrderedPlaceWidget extends StatelessWidget {
  final String text;
  final String image;
  final Color textColor;

  OrderedPlaceWidget({
    required this.text,
    required this.image,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: textColor,
                fontSize: 12,
                height: 1,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset(image, height: 20, width: 90),
          ],
        ),
        SizedBox(width: 5),
      ],
    );
  }
}

class Location extends StatelessWidget {
  final String t1;
  final String t2;
  final IconData icons;
  final Color iconColor;

  Location({
    required this.t1,
    required this.t2,
    required this.iconColor,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 20),
        IconButton(
          onPressed: () {},
          icon: Icon(icons, color: iconColor),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text(
              t1,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              t2,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
