import 'package:calculator/blocs/calculator_cubit.dart';
import 'package:calculator/blocs/mode_cubit.dart';
import 'package:calculator/utils/assets.dart';
import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:calculator/widgets/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ModeCubit>().state.mode
          ? CalculatorColors.backgroundColorLight
          : CalculatorColors.backgroundColorDark,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: Dimens.spacing,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  context.read<ModeCubit>().toggleMode();
                },
                child: Image.asset(
                  context.watch<ModeCubit>().state.mode
                      ? Assets.lightModeAssetPath
                      : Assets.darkModeAssetPath,
                ),
              ),
            ),
            BlocBuilder<CalculatorCubit, CalculatorState>(
              builder: (context, state) {
                return Padding(
                  padding: Dimens.calculationPadding,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      state.calculation,
                      style: const TextStyle(
                        fontSize: Dimens.fontSizeCalculation,
                        color: CalculatorColors.calculationColor,
                      ),
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<CalculatorCubit, CalculatorState>(
              builder: (context, state) {
                return Padding(
                  padding: Dimens.numberPadding,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      state.result.toString(),
                      style: TextStyle(
                        fontSize: Dimens.fontSizeNumber,
                        color: context.watch<ModeCubit>().state.mode
                            ? CalculatorColors.numberLight
                            : CalculatorColors.numberDark,
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Keyboard(
                  onPressed: (value) {
                    final calculatorCubit = context.read<CalculatorCubit>();

                    if (value == 'C') {
                      calculatorCubit.clearValues();
                    } else if (value == 'delete') {
                      calculatorCubit.deleteLastCharacter();
                    } else if (value == '=') {
                      calculatorCubit.calculateResult();
                    } else if (value == 'plus_minus') {
                      calculatorCubit.toggleSign();
                    } else {
                      calculatorCubit.updateCalculation(value);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
