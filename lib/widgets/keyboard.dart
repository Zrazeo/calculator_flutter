import 'package:calculator/blocs/mode_cubit.dart';
import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

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
              color: isDarkMode
                  ? CalculatorColors.greyLight
                  : CalculatorColors.greyDark,
            ),
            Button(
              text: 'plus_minus',
              color: isDarkMode
                  ? CalculatorColors.greyLight
                  : CalculatorColors.greyDark,
            ),
            Button(
              text: '%',
              color: isDarkMode
                  ? CalculatorColors.greyLight
                  : CalculatorColors.greyDark,
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
            Button(
              text: '1',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '2',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '3',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
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
            Button(
              text: '4',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '5',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '6',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
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
            Button(
              text: '7',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '8',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '9',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
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
            Button(
              text: '.',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: '0',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            Button(
              text: 'delete',
              color: isDarkMode
                  ? CalculatorColors.lightMode
                  : CalculatorColors.darkMode,
            ),
            const Button(
              text: '=',
              color: CalculatorColors.blue,
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
