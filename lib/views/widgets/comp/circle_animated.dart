// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

Column animatedCircle({required String skill, required double pourcentage}) {
  return Column(
    children: [
      AspectRatio(
        aspectRatio: 1,
        child: TweenAnimationBuilder(
          duration: Duration(seconds: 2),
          builder: (context, double value, child) {
            return Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  color: thirdly,
                  value: double.parse(value.toString()),
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            );
          },
          tween: Tween<double>(begin: 0, end: pourcentage),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        skill,
        style: TextStyle(color: Colors.grey.shade200),
      )
    ],
  );
}
