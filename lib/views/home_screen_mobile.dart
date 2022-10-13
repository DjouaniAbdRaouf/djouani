// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/views/mobile/DrawerInfoMobile.dart';
import 'package:portfolio/views/widgets/PrincipalWidget.dart/DrawerInformation.dart';
import 'package:portfolio/views/widgets/PrincipalWidget.dart/HomeScreenInformation.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrwaerInfoMobile(),
          HomeScreenInformation(),
        ],
      ),
    );
  }
}
