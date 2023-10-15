import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  int selectedIndex = 0;
  List<String> size = [
    'S',
    'M',
    'L',
    'XL',
    '2XL',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Color(0xffe7323e)
                      : const Color(0xff2a2a2a),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    size[index],
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Audiowide',
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.transparent,
            height: 20,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
