// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/advancedWidget/textUtils.dart';

class AdvancedButton extends StatelessWidget {
  const AdvancedButton({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(width: 2, color: Colors.amber.shade600)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            icon,
            color: Colors.green,
            size: 22,
          ),
          SizedBox(
            width: 5,
          ),
          textUtils(
              color: Colors.green,
              fontWeight: FontWeight.w500,
              fontsize: 17.0,
              text: text)
        ],
      ),
    );
  }
}
