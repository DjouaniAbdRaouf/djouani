// ignore_for_file: file_names

// ignore_for_file: , prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:portfolio/theme.dart';
import 'package:portfolio/views/widgets/comp/circle_animated.dart';
import 'package:portfolio/views/widgets/comp/coding_info.dart';
import 'package:portfolio/views/widgets/comp/header_info.dart';
import 'package:portfolio/views/widgets/comp/row_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrwaerInfoMobile extends StatelessWidget {
  const DrwaerInfoMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: primary,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderInfo(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  rowInfo(residence: "Resisence", value: "Algeria"),
                  SizedBox(
                    height: 5,
                  ),
                  rowInfo(residence: "City", value: "Oum el bouaghi"),
                  SizedBox(
                    height: 5,
                  ),
                  rowInfo(residence: "Age", value: "25"),
                  SizedBox(
                    height: 5,
                  ),
                  rowInfo(residence: "Phone Number", value: "+213657983113"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Skills",
                style: TextStyle(
                    color: Colors.grey.shade200, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: animatedCircle(skill: "Flutter", pourcentage: 0.8),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: animatedCircle(skill: "PHP", pourcentage: 0.7),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: animatedCircle(skill: "NODE JS", pourcentage: 0.5),
                  )
                ],
              ),
            ),
            Divider(
              color: secondary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Coding",
                style: TextStyle(
                    color: Colors.grey.shade200, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                codingInfo(label: "Dart", pourcentage: 0.7),
                SizedBox(
                  height: 10,
                ),
                codingInfo(label: "Java", pourcentage: 0.8),
                SizedBox(
                  height: 10,
                ),
                codingInfo(label: "Php", pourcentage: 0.6),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You can find me",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade200,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //   FaIcon(
                //     FontAwesomeIcons.facebook,
                //     size: 26,
                //     color: Colors.grey,
                //   ),
                //   SizedBox(
                //     width: 8,
                //   ),
                //   FaIcon(FontAwesomeIcons.github, size: 26, color: Colors.grey),
                //   SizedBox(
                //     width: 8,
                //   ),
                //   FaIcon(FontAwesomeIcons.linkedin, size: 26, color: Colors.grey),
                //   SizedBox(
                //     width: 8,
                //   ),
                //   FaIcon(FontAwesomeIcons.google, size: 26, color: Colors.grey),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FaIcon {}
