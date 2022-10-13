// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio/models/projects_model.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/views/Screens/Home_Page.dart';
import 'package:portfolio/views/home_screen_mobile.dart';
import 'package:portfolio/views/mobile/coding_info._mobile.dart';
import 'package:portfolio/views/mobile/projectCardMoble.dart';
import 'package:portfolio/views/widgets/advancedWidget/textUtils.dart';
import 'package:portfolio/views/widgets/comp/coding_info.dart';
import 'package:portfolio/views/widgets/comp/projeCard.dart';
import 'package:portfolio/views/widgets/comp/row_info.dart';

import 'views/widgets/PrincipalWidget.dart/HomeScreenInformation.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio', debugShowCheckedModeBanner: false, home: HomePage(),
      // LayoutBuilder(
      //   builder: (context, constraints) {
      //     print(constraints.minWidth.toInt());
      //     if (constraints.minWidth.toInt() >= 1049) {
      //       return HomePage();
      //     } else {
      //       return homeScreenmobileResponsive(context);
      //     }
      //   },
      // ),
    );
  }

  SingleChildScrollView homeScreenmobileResponsive(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: primary),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            "assets/fba154e52d255cbabe125dd7764c3fa7.jpg"),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            "Djouani Abd Raouf",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: Colors.grey.shade200, fontSize: 17),
                          ),
                          Text(
                            "Software enginner and Flutter developer",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(color: Colors.grey, fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      rowInfoMobile(residence: "Residence", value: "Algeria"),
                      rowInfoMobile(residence: "City", value: "Oum el Bouaghi"),
                      rowInfoMobile(residence: "Age", value: "25"),
                      rowInfoMobile(
                          residence: "Phone", value: "+2310657983113"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                textUtils(
                    color: Colors.grey.shade200,
                    fontWeight: FontWeight.bold,
                    fontsize: 20.0,
                    text: "My Skills"),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    annimatedCircleMobile(
                        pourcentage: 0.7, label: "Conception"),
                    annimatedCircleMobile(
                        pourcentage: 0.8, label: "Programing"),
                    annimatedCircleMobile(pourcentage: 0.6, label: "Design"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                textUtils(
                    color: Colors.grey.shade200,
                    fontWeight: FontWeight.bold,
                    fontsize: 20.0,
                    text: "Coding"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: primary,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CodinInfoMobile(label: "Node Js", pourcentage: 0.8),
                        CodinInfoMobile(label: "Flutter", pourcentage: 0.5),
                        CodinInfoMobile(label: "Python", pourcentage: 0.6),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/irvan-smith-5eBW5GomfhY-unsplash.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Container(
                        color: primary.withOpacity(0.66),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Discover My amazing space !!",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade200),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DefaultTextStyle(
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.grey.shade200,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                              child: Row(
                                children: [
                                  Text(
                                    "<I Can build>",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: thirdly,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  AnimatedTextKit(
                                    animatedTexts: [
                                      TyperAnimatedText(
                                          "Responsive web and Mobile App"),
                                      TyperAnimatedText(
                                          "Api Integration Using Node JS"),
                                      TyperAnimatedText(
                                          "Modelisation UML and IOt "),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "</I Can build>",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: thirdly,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "A Software Engineer is an IT professional who designs, develops and maintains computer software at a company. They use their creativity and technical skills and apply the principles of software engineering to help solve new and ongoing problems for an organization.",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.normal),
                              maxLines: 6,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.amber.shade600),
                                onPressed: () {},
                                child: Text(
                                  "Explore More",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                textUtils(
                    color: Colors.grey.shade200,
                    fontWeight: FontWeight.w600,
                    fontsize: 17.0,
                    text: "My Projects"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ProjectCardMobile(
                            project: ProjectModel.MyProject[index].project,
                            description:
                                ProjectModel.MyProject[index].description);
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: ProjectModel.MyProject.length),
                ),
                textUtils(
                    color: Colors.grey.shade200,
                    fontWeight: FontWeight.w600,
                    fontsize: 17.0,
                    text: "You can find me"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 26,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    FaIcon(FontAwesomeIcons.github,
                        size: 26, color: Colors.grey),
                    SizedBox(
                      width: 8,
                    ),
                    FaIcon(FontAwesomeIcons.linkedin,
                        size: 26, color: Colors.grey),
                    SizedBox(
                      width: 8,
                    ),
                    FaIcon(FontAwesomeIcons.google,
                        size: 26, color: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget annimatedCircleMobile(
      {required double pourcentage, required String label}) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          width: 120,
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
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.grey.shade200),
                    ),
                  )
                ],
              );
            },
            tween: Tween<double>(begin: 0, end: pourcentage),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        textUtils(
            color: Colors.grey.shade200,
            fontWeight: FontWeight.normal,
            fontsize: 16.0,
            text: label)
      ],
    );
  }

  Row rowInfoMobile({required String residence, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textUtils(
            color: Colors.grey.shade200,
            fontWeight: FontWeight.w600,
            fontsize: 17.0,
            text: residence),
        textUtils(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontsize: 17.0,
            text: value),
      ],
    );
  }
}
