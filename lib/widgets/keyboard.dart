import 'package:calculator/blocs/mode_cubit.dart';
import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ModeCubit>().state.mode;

    return Column(
      children: [
        const SizedBox(height: Dimens.spacing),
        rowButtons(
          [
            Button(
              text: 'C',
              value: 'C',
              color: isDarkMode
                  ? CalculatorColors.greyLight
                  : CalculatorColors.greyDark,
              onPressed: onPressed,
            ),
            Button(
              text: 'plus_minus',
              value: 'plus_minus',
              color: isDarkMode
                  ? CalculatorColors.greyLight
                  : CalculatorColors.greyDark,
              onPressed: onPressed,
            ),
            Button(
              text: '%',
              value: '%',
              color: isDarkMode
                  ? CalculatorColors.greyLight
                  : CalculatorColors.greyDark,
              onPressed: onPressed,
            ),
            Button(
              text: '÷',
              value: '/',
              color: CalculatorColors.blue,
              onPressed: onPressed,
            ),
          ],
        ),
        const SizedBox(height: Dimens.spacing),
        rowButtons(
          [
            Button(
              text: '7',
              value: '7',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '8',
              value: '8',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '9',
              value: '9',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '×',
              value: '*',
              color: CalculatorColors.blue,
              onPressed: onPressed,
            ),
          ],
        ),
        const SizedBox(height: Dimens.spacing),
        rowButtons(
          [
            Button(
              text: '4',
              value: '4',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '5',
              value: '5',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '6',
              value: '6',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '–',
              value: '-',
              color: CalculatorColors.blue,
              onPressed: onPressed,
            ),
          ],
        ),
        const SizedBox(height: Dimens.spacing),
        rowButtons(
          [
            Button(
              text: '1',
              value: '1',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '2',
              value: '2',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '3',
              value: '3',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '+',
              value: '+',
              color: CalculatorColors.blue,
              onPressed: onPressed,
            ),
          ],
        ),
        const SizedBox(height: Dimens.spacing),
        rowButtons(
          [
            Button(
              text: '.',
              value: '.',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '0',
              value: '0',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: 'delete',
              value: 'delete',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
              onPressed: onPressed,
            ),
            Button(
              text: '=',
              value: '=',
              color: CalculatorColors.blue,
              onPressed: onPressed,
            ),
          ],
        ),
      ],
    );
  }

  Widget rowButtons(List<Widget> buttons) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: buttons,
      );
}
