import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              icon: Icon(Icons.arrow_back_ios_new_rounded))),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Image.asset(
              'assets/images/Rectangle 2.png',
            ),
          ),
        ],
      ),
    );
  }
}
