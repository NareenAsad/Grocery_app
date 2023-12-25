import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DialPad extends StatefulWidget {
  final TextEditingController textController;

  const DialPad({required this.textController});
  @override
  _DialPadState createState() => _DialPadState();
}

class _DialPadState extends State<DialPad> {
  void _updateTextField(String value) {
    setState(() {
      widget.textController.text += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 200, 196, 196),
        height: 272,
        width: 331,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DialPadButton(
                  number: '1',
                  onPressed: () => _updateTextField('1'),
                ),
                SizedBox(width: 50),
                DialPadButton(
                  number: '2',
                  onPressed: () => _updateTextField('2'),
                ),
                SizedBox(width: 50),
                DialPadButton(
                  number: '3',
                  onPressed: () => _updateTextField('3'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DialPadButton(
                  number: '4',
                  onPressed: () => _updateTextField('4'),
                ),
                SizedBox(width: 50),
                DialPadButton(
                  number: '5',
                  onPressed: () => _updateTextField('5'),
                ),
                SizedBox(width: 50),
                DialPadButton(
                  number: '6',
                  onPressed: () => _updateTextField('6'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DialPadButton(
                  number: '7',
                  onPressed: () => _updateTextField('7'),
                ),
                SizedBox(width: 50),
                DialPadButton(
                  number: '8',
                  onPressed: () => _updateTextField('8'),
                ),
                SizedBox(width: 50),
                DialPadButton(
                  number: '9',
                  onPressed: () => _updateTextField('9'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DialPadButton(
                  number: '0',
                  onPressed: () => _updateTextField('0'),
                ),
                SizedBox(width: 60),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.backspace_outlined,
                      size: 20,
                      color: Colors.black,
                    )),
              ],
            )
          ],
        ));
  }
}

class DialPadButton extends StatelessWidget {
  final String number;
  final VoidCallback onPressed;

  const DialPadButton({required this.number, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.all(16),
      ),
      child: Text(number,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400)),
    );
  }
}
