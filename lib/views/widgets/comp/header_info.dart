// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondary,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              backgroundImage:
                  AssetImage("assets/fba154e52d255cbabe125dd7764c3fa7.jpg"),
            ),
            Spacer(),
            Text(
              "Djouani Abd Raouf",
              style: TextStyle(color: Colors.grey.shade200),
            ),
            Text(
              "Software enginner and Flutter developer",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey, height: 2.5),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
