import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/profile/widgets/profile_custom_widet.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/linebar.png'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Text(
                'On The Way',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 130),
              IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    Icon(
                      Icons.timelapse_rounded,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '10 min',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              OrderedPlaceWidget(
                  text: 'Ordered Place',
                  image: 'assets/images/greenline.png',
                  textColor: Colors.green),
              OrderedPlaceWidget(
                  text: 'On The Way',
                  image: 'assets/images/line.png',
                  textColor: Colors.black),
              OrderedPlaceWidget(
                  text: 'Delivered',
                  image: 'assets/images/greyline.png',
                  textColor: Colors.grey),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/6.png'),
                radius: 20,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Your delivery hero',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Abdulmalik Qasim',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(width: 70),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_outlined),
                    color: Colors.green,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.phone),
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Location(
                  t1: 'Store',
                  t2: 'Insta Grocery Store',
                  iconColor: Colors.red,
                  icons: Icons.circle_outlined),
              SizedBox(height: 30),
              Location(
                  t1: 'Your Place',
                  t2: 'Queens Road London',
                  iconColor: Colors.green,
                  icons: Icons.place),
            ],
          ),
        ],
      ),
    );
  }
}
