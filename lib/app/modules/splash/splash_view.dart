import 'package:flutter/material.dart';
import 'package:grocery_app/app/modules/welcome/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToWelcome();
  }

  void _navigateToWelcome() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 153, 89, 1),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pic1.png',
                height: 140,
              ),
              SizedBox(height: 10),
              Text(
                'Grocery',
                style: TextStyle(
                    fontFamily: 'Poppins-Black',
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'App',
                style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
