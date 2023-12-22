import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/home/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 244, 241, 241),
                  radius: 25,
                  foregroundImage: AssetImage('assets/images/pic2.png'),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Enter Your Mobile Number',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Text(
                'We will send you a verification code',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins-Regular',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '+44 (000) 000-00-00',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: Text("Continue",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(0, 153, 89, 1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 90, vertical: 17)),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}