import 'package:flutter/material.dart';

class GenZText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  GenZText({@required this.text,this.size = 19.0,this.color= Colors.green});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size,color: color),
    );
  }
}
