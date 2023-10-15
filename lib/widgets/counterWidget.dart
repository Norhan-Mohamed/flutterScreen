import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 1;
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 140,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xff2a2a2a),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              text: '+',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '$count',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Audiowide',
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                if (count > 1) {
                  setState(() {
                    count--;
                  });
                }
              },
              text: '-',
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  CustomButton({
    required this.onPressed,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Color(0xffe7323e),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: 'Audiowide',
        ),
      ),
    );
  }
}
