import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  final String title;
  final String value;

  DetailsWidget({
    required this.title,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${title}: ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Audiowide',
            ),
          ),
          TextSpan(
            text: '$value',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              letterSpacing: 1,
              fontFamily: 'Audiowide',
            ),
          ),
        ],
      ),
    );
  }
}
