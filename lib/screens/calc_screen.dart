import 'package:flutter/material.dart';
import 'package:calculator/widgets/button.dart';
import 'package:calculator/utils/constants.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(241, 242, 243, 1),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: SizedBox(
                  width: Constants.buttonWidth,
                  height: Constants.buttonHeight,
                  child: Image.asset(Constants.lightModeAssetPath),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 20, 0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '6,291/5',
                  style: TextStyle(fontSize: 45, color: Colors.grey),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 20, 0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '1,258.2',
                  style: TextStyle(fontSize: 96, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 20, 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Button(
                          text: 'C',
                          color: 'grey',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '+/-',
                          color: 'grey',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '%',
                          color: 'grey',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '/',
                          color: 'blue',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Button(
                          text: '1',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '2',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '3',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: 'x',
                          color: 'blue',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Button(
                          text: '4',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '5',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '6',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '-',
                          color: 'blue',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Button(
                          text: '7',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '8',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '9',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '+',
                          color: 'blue',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Button(
                          text: '.',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '0',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '<[]',
                          color: 'white',
                        ),
                        SizedBox(width: 16),
                        Button(
                          text: '=',
                          color: 'blue',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
