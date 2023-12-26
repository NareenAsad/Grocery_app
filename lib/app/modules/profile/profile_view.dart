import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/profile/widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double containerHeight = 0.55;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeightValue = screenHeight * containerHeight;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/map.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              height: containerHeightValue,
            ),
          ),
          Positioned(
            top: 365,
            left: 0,
            right: 0,
            child: ProfileWidget(),
          ),
        ],
      ),
    );
  }
}
