import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.color,
    Key? key,
    this.value,
  }) : super(key: key);
  final String text;
  final double? value;
  final String color;

  @override
  Widget build(BuildContext context) {
    final colorMap = {
      'white': Colors.white,
      'blue': Colors.blue,
      'grey': Colors.grey,
    };

    return Container(
      width: 75,
      height: 70,
      decoration: BoxDecoration(
        color: colorMap[color] ?? Colors.grey,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 32, color: Colors.black),
        ),
      ),
    );
  }
}
