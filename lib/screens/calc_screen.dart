import 'package:calculator/utils/assets.dart';
import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:calculator/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: CalculatorColors.backgroundColorLight,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: Dimens.spacing,
              ),
              Center(
                child: SizedBox(
                  width: Dimens.imageWidth,
                  height: Dimens.imageHeight,
                  child: Image.asset(
                    Assets.lightModeAssetPath,
                  ),
                ),
              ),
              const Padding(
                padding: Dimens.calculationPadding,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '6,291÷5',
                    style: TextStyle(
                      fontSize: Dimens.fontSizeCalculation,
                      color: CalculatorColors.calculationColor,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: Dimens.numberPadding,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '1,258.2',
                    style: TextStyle(
                      fontSize: Dimens.fontSizeNumber,
                      color: CalculatorColors.numberLight,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: Dimens.keyboardPadding,
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
