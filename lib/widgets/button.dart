import 'package:calculator/blocs/mode_cubit.dart';
import 'package:calculator/utils/assets.dart';
import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.color,
    required this.value,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color color;
  final String value;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.buttonWidth,
      height: Dimens.buttonHeight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () => onPressed(value),
        child: text == 'delete' || text == 'plus_minus'
            ? SvgPicture.asset(
                text == 'delete' ? Assets.deleteIcon : Assets.plusMinusIcon,
                width: Dimens.svgWidth,
                height: Dimens.svgHeight,
                colorFilter: ColorFilter.mode(
                  context.watch<ModeCubit>().state.mode
                      ? CalculatorColors.numberLight
                      : CalculatorColors.numberDark,
                  BlendMode.srcIn,
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  fontSize: Dimens.textButtonSize,
                  color: context.watch<ModeCubit>().state.mode
                      ? CalculatorColors.numberLight
                      : CalculatorColors.numberDark,
                ),
              ),
      ),
    );
  }
}
