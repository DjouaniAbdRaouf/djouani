// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:portfolio/Responsive.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/views/widgets/advancedWidget/textUtils.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Responsive.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 400,
                      color: secondary.withOpacity(0.9),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.grey.shade200,
                      height: 400,
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    height: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black)),
                          Text(
                            "I'm Djouani Abd Raouf i have Bachelor's degree in Information System also a Master degree in information system and web technologies .I have many personal projects app for management, (pharmacy management , iot project ...) I have an experience with flutter framework (dart language) to build a cross platform applications (android . iOS web ) I have also an experience with php (backend language) with jQuery ajax ....",
                            style: GoogleFonts.abel(
                                fontSize: 14, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
        if (Responsive.isDesktop(context))
          Positioned(
              left: 150,
              top: 30,
              child: Row(
                children: [
                  CardDev(),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    height: 350,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello",
                            style: GoogleFonts.bebasNeue(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        Text(
                          "I'm Djouani Abd Raouf i have Bachelor's degree in Information System also a Master degree in information system and web technologies .I have many personal projects app for management, (pharmacy management , iot project ...) I have an experience with flutter framework (dart language) to build a cross platform applications (android . iOS web ) I have also an experience with php (backend language) with jQuery ajax ....",
                          style: GoogleFonts.abel(
                              fontSize: 14, color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              )),
      ],
    );
  }

  Card CardDev() {
    return Card(
      elevation: 30,
      child: Container(
        height: 350,
        width: 250,
        color: secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage:
                  AssetImage("assets/fba154e52d255cbabe125dd7764c3fa7.jpg"),
            ),
            SizedBox(
              height: 25,
            ),
            textUtils(
                color: Colors.grey.shade200,
                fontWeight: FontWeight.w600,
                fontsize: 20.0,
                text: "Djouani Abd Raouf"),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 80,
              height: 3,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Software engineer & Flutter developer',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
