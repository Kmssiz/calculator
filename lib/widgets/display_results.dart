import 'package:flutter/material.dart';

class DisplayNumber extends StatefulWidget {
  DisplayNumber({Key? key}) : super(key: key);

  @override
  _DisplayNumberState createState() => _DisplayNumberState();
}

class _DisplayNumberState extends State<DisplayNumber> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0, MediaQuery.of(context).size.height * 0.1, 0, 0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
