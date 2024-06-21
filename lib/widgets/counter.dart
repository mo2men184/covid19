import 'package:covid19/constants.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  Counter({
    required this.number,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        Text(
          "$number",
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(title, style: kSubTextStyle),
      ],
    );
  }
}
