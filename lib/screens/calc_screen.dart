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
  Widget build(BuildContext context) => Scaffold(
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
              Padding(
                padding: Dimens.numberPadding,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '1,258.2',
                    style: TextStyle(
                      fontSize: Dimens.fontSizeNumber,
                      color: context.watch<ModeCubit>().state.mode
                          ? CalculatorColors.numberLight
                          : CalculatorColors.numberDark,
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
