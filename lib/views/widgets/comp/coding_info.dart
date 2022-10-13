// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

Column codingInfo({required String label, required double pourcentage}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey.shade200),
          ),
          Text(
            (pourcentage * 100).toInt().toString() + "%",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
      SizedBox(
        height: 5,
      ),
      TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: pourcentage),
        duration: Duration(seconds: 2),
        builder: (BuildContext context, double value, Widget? child) {
          return LinearProgressIndicator(
            backgroundColor: primary,
            value: value,
            color: thirdly,
          );
        },
      )
    ],
  );
}
