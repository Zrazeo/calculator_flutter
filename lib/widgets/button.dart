import 'package:calculator/utils/assets.dart';
import 'package:calculator/utils/calculator_colors.dart';
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
        width: 75,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: TextButton(
          onPressed: () {},
          child: text == 'delete' || text == 'plus_minus'
              ? SvgPicture.asset(
                  text == 'delete' ? Assets.deleteIcon : Assets.plusMinusIcon,
                  width: 32,
                  height: 32,
                  colorFilter: const ColorFilter.mode(
                    CalculatorColors.numberLight,
                    BlendMode.srcIn,
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                    fontSize: 32,
                    color: CalculatorColors.numberLight,
                  ),
                ),
        ),
      );
}
