import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(this.text, this.onClick, {super.key});

  final Function onClick;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          onClick();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        child: Text(text),
      ),
    );
  }
}
