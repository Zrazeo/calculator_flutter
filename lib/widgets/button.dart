import 'package:calculator/utils/assets.dart';
import 'package:calculator/utils/calculator_colors.dart';
import 'package:calculator/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.color,
    Key? key,
    this.value,
  }) : super(key: key);

  final String text;
  final double? value;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
        width: Dimens.buttonWidth,
        height: Dimens.buttonHeight,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
          onPressed: () {},
          child: text == 'delete' || text == 'plus_minus'
              ? SvgPicture.asset(
                  text == 'delete' ? Assets.deleteIcon : Assets.plusMinusIcon,
                  width: Dimens.svgWidth,
                  height: Dimens.svgHeight,
                  colorFilter: const ColorFilter.mode(
                    CalculatorColors.numberLight,
                    BlendMode.srcIn,
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                    fontSize: Dimens.textButtonSize,
                    color: CalculatorColors.numberLight,
                  ),
                ),
        ),
      );
}
