import 'package:calculator/screens/calc_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CalcScreen(),
      );
}
