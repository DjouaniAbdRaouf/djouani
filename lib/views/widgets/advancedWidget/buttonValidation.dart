// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nice_buttons/nice_buttons.dart';

class ButtonValidation extends StatelessWidget {
  const ButtonValidation(
      {Key? key, required this.textButton, required this.iconbutton})
      : super(key: key);

  final String textButton;
  final IconData iconbutton;

  @override
  Widget build(BuildContext context) {
    return NiceButtons(
      progress: true,
      startColor: Colors.amber,
      endColor: Colors.amber,
      borderColor: Colors.amber,
      stretch: false,
      gradientOrientation: GradientOrientation.Horizontal,
      onTap: (finish) {
        Timer(Duration(seconds: 4), () {});
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            FaIcon(
              iconbutton,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              textButton,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
