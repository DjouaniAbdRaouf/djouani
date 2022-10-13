// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class CodinInfoMobile extends StatelessWidget {
  const CodinInfoMobile(
      {Key? key, required this.label, required this.pourcentage})
      : super(key: key);

  final String label;
  final double pourcentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.grey.shade200, fontSize: 14),
                ),
                Text(
                  (pourcentage * 100).toInt().toString() + "%",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.grey, fontSize: 14),
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
                  backgroundColor: secondary,
                  value: value,
                  color: thirdly,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
