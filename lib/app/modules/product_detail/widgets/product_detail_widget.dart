import 'package:flutter/material.dart';

class ProductInfoWidget extends StatelessWidget {
  final String image;
  final String primaryText;
  final String secondaryText;

  ProductInfoWidget({
    Key? key,
    required this.image,
    required this.primaryText,
    required this.secondaryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        Column(
          children: [
            Text(primaryText,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Colors.green)),
            Text(secondaryText,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Colors.grey)),
          ],
        ),
        SizedBox(width: 50),
      ],
    );
  }
}
