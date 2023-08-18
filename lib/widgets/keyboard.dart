import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(height: Dimens.spacing),
          rowButtons(
            [
              const Button(
                text: 'C',
                color: CalculatorColors.greyLight,
              ),
              const Button(
                text: 'plus_minus',
                color: CalculatorColors.greyLight,
              ),
              const Button(
                text: '%',
                color: CalculatorColors.greyLight,
              ),
              const Button(
                text: '÷',
                color: CalculatorColors.blue,
              ),
            ],
          ),
          const SizedBox(height: Dimens.spacing),
          rowButtons(
            [
              const Button(
                text: '1',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '2',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '3',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '×',
                color: CalculatorColors.blue,
              ),
            ],
          ),
          const SizedBox(height: Dimens.spacing),
          rowButtons(
            [
              const Button(
                text: '4',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '5',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '6',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '–',
                color: CalculatorColors.blue,
              ),
            ],
          ),
          const SizedBox(height: Dimens.spacing),
          rowButtons(
            [
              const Button(
                text: '7',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '8',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '9',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '+',
                color: CalculatorColors.blue,
              ),
            ],
          ),
          const SizedBox(height: Dimens.spacing),
          rowButtons(
            [
              const Button(
                text: '.',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '0',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: 'delete',
                color: CalculatorColors.lightMode,
              ),
              const Button(
                text: '=',
                color: CalculatorColors.blue,
              ),
            ],
          ),
        ],
      );

  Widget rowButtons(List<Widget> buttons) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: buttons,
      );
}
