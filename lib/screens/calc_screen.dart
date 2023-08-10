import 'package:calculator/utils/constants.dart';
import 'package:calculator/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Constants.backgroundColorLight,
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: Constants.buttonWidth,
                  height: Constants.buttonHeight,
                  child: Image.asset(Constants.lightModeAssetPath),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  top: 40,
                  end: 20,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '6,291/5',
                    style: TextStyle(
                      fontSize: 45,
                      color: Constants.calculationColor,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  top: 16,
                  end: 20,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '1,258.2',
                    style: TextStyle(
                      fontSize: 96,
                      color: Constants.numberLight,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 24,
                  top: 16,
                  end: 20,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Keyboard(),
                ),
              ),
            ],
          ),
        ),
      );
}
