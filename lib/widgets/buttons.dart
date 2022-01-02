import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final bool isIcon;
  const MyButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.isIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
                child: isIcon
                    ? SizedBox(
                        height: 30,
                        child: Image.asset(
                          'assets/$text.png',
                          color: textColor,
                        ),
                      )
                    : Text(
                        text,
                        style: TextStyle(color: textColor, fontSize: 30),
                      )),
          )),
    );
  }
}
