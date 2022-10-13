// ignore_for_file: prefer_const_constructors, file_names, deprecated_member_use, unused_element

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/views/widgets/comp/circle_animated.dart';
import 'package:portfolio/views/widgets/comp/coding_info.dart';
import 'package:portfolio/views/widgets/comp/header_info.dart';
import 'package:portfolio/views/widgets/comp/row_info.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(10),
        color: primary,
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
                    rowInfo(residence: "Phone", value: "+213657983113"),
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
                      child:
                          animatedCircle(skill: "Conception", pourcentage: 0.7),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child:
                          animatedCircle(skill: "Programing", pourcentage: 0.8),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: animatedCircle(skill: "Design", pourcentage: 0.6),
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
                  codingInfo(label: "Dart and Flutter", pourcentage: 0.7),
                  SizedBox(
                    height: 10,
                  ),
                  codingInfo(label: "Java", pourcentage: 0.7),
                  SizedBox(
                    height: 10,
                  ),
                  codingInfo(label: "Php", pourcentage: 0.5),
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
                  InkWell(
                    onTap: () async {
                      await _launchInWebViewWithJavaScript(
                          "https://www.facebook.com/");
                    },
                    child: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 26,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                      onTap: () async => await _launchInWebViewWithJavaScript(
                          "https://github.com/DjouaniAbdRaouf"),
                      child: FaIcon(FontAwesomeIcons.github,
                          size: 26, color: Colors.grey)),
                  SizedBox(
                    width: 8,
                  ),
                  FaIcon(FontAwesomeIcons.linkedin,
                      size: 26, color: Colors.grey),
                  SizedBox(
                    width: 8,
                  ),
                  FaIcon(FontAwesomeIcons.google, size: 26, color: Colors.grey),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
