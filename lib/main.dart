import 'package:calculator/blocs/mode_cubit.dart';
import 'package:calculator/screens/calc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
      BlocProvider(
        create: (context) => ModeCubit(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Calculator',
        home: CalcScreen(),
      );
}
