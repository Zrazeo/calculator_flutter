import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double? value;
  final String color;
  const Button({
    Key? key,
    required this.text,
    this.value,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorMap = {
      'white': Colors.white,
      'blue': Colors.blue,
      'grey': Colors.grey,
    };

    final bgColor = colorMap[color] ?? Colors.grey;

    return Container(
      width: 75,
      height: 70,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25), // Zaokrąglenie rogów
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
