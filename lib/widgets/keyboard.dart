import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  Widget rowButtons(List<Widget> buttons) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: buttons,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        rowButtons(
          [
            const Button(
              text: 'C',
              color: 'grey_light',
            ),
            const Button(
              text: 'plus_minus',
              color: 'grey_light',
            ),
            const Button(
              text: '%',
              color: 'grey_light',
            ),
            const Button(
              text: '÷',
              color: 'blue',
            ),
          ],
        ),
        const SizedBox(height: 16),
        rowButtons(
          [
            const Button(
              text: '1',
              color: 'light_mode',
            ),
            const Button(
              text: '2',
              color: 'light_mode',
            ),
            const Button(
              text: '3',
              color: 'light_mode',
            ),
            const Button(
              text: '×',
              color: 'blue',
            ),
          ],
        ),
        const SizedBox(height: 16),
        rowButtons(
          [
            const Button(
              text: '4',
              color: 'light_mode',
            ),
            const Button(
              text: '5',
              color: 'light_mode',
            ),
            const Button(
              text: '6',
              color: 'light_mode',
            ),
            const Button(
              text: '–',
              color: 'blue',
            ),
          ],
        ),
        const SizedBox(height: 16),
        rowButtons(
          [
            const Button(
              text: '7',
              color: 'light_mode',
            ),
            const Button(
              text: '8',
              color: 'light_mode',
            ),
            const Button(
              text: '9',
              color: 'light_mode',
            ),
            const Button(
              text: '+',
              color: 'blue',
            ),
          ],
        ),
        const SizedBox(height: 16),
        rowButtons(
          [
            const Button(
              text: '.',
              color: 'light_mode',
            ),
            const Button(
              text: '0',
              color: 'light_mode',
            ),
            const Button(
              text: 'delete',
              color: 'light_mode',
            ),
            const Button(
              text: '=',
              color: 'blue',
            ),
          ],
        ),
      ],
    );
  }
}
