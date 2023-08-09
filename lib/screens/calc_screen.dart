import 'package:flutter/material.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset('assets/dark_mode.png'),
              label: const Text('button to change the screen brightness mode'),
            ),
          ),
        ],
      ),
    );
  }
}
