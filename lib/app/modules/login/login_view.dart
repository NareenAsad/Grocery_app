import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/app/modules/home/widgets/home_widget.dart';
import 'package:grocery_app/app/modules/login/widgets/login_widget.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController _textController = TextEditingController();

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
            Column(
              children: [
                Center(
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 244, 241, 241),
                        radius: 25,
                        foregroundImage: AssetImage('assets/images/pic2.png'))),
                SizedBox(height: 20),
                Text('Enter Your Mobile Number',
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Poppins-Regular',
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    textAlign: TextAlign.center),
                SizedBox(height: 15),
                Text('We will send you a verification code',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins-Regular',
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    textAlign: TextAlign.center),
                Row(children: [
                  SizedBox(width: 50),
                  Text(
                    '+44 | ',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _textController,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        hintText: '(000) 000-00-00',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ]),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: //_textController.text.isEmpty
                      // ? null
                      // :
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(0, 153, 89, 1)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 90, vertical: 17)),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                    'By clicking on “Continue” you are                                       '
                    'agreeing to our terms of use ',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins-Regular',
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                DialPad(textController: _textController),
              ],
            )
          ],
        ));
  }
}
