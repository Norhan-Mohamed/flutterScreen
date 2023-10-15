import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class RatingBar extends StatefulWidget {
  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  double rateValue = 3.5;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Rate(
          iconSize: 30,
          color: Color(0xffe7323e),
          allowHalf: true,
          allowClear: true,
          initialValue: rateValue,
          readOnly: false,
          onChange: (value) {
            setState(() {
              rateValue = value;
            });
          },
        ),
        Text(
          rateValue.toString(),
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontFamily: 'Audiowide',
          ),
        )
      ],
    );
  }
}
