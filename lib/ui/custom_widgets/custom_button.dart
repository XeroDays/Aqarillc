import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(this.text, this.onClick, {this.width, super.key});

  final Function onClick;
  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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
