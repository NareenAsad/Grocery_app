import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/calendar/calendar_view.dart';
import 'package:grocery_app/app/modules/cart/cart_view.dart';
import 'package:grocery_app/app/modules/home/home_view.dart';
import 'package:grocery_app/app/modules/profile/profile_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  static const Color selectedColor = Colors.black;
  static const Color unselectedColor = Colors.grey;

  List<Widget> _children = [
    HomeView(),
    CartScreen(),
    CalendarScreen(),
    ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopify_rounded, color: Colors.green),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
