// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:portfolio/Responsive.dart';
import 'package:portfolio/models/projects_model.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/views/Screens/projectPage.dart';
import 'package:portfolio/views/mobile/projectCardMoble.dart';
import 'package:portfolio/views/widgets/advancedWidget/textUtils.dart';
import 'package:portfolio/views/widgets/comp/AboutMe.dart';
import 'package:portfolio/views/widgets/comp/projeCard.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreenInformation extends StatelessWidget {
  const HomeScreenInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: primary,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 3,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/irvan-smith-5eBW5GomfhY-unsplash.jpg",
                        fit: BoxFit.cover,
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
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade200)
                                  : Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade200),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DefaultTextStyle(
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.grey.shade200,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                              child: Expanded(
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
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Responsive.isMobile(context)
                                ? SizedBox()
                                : Responsive.isDesktop(context)
                                    ? Text(
                                        "A Software Engineer is an IT professional who designs, develops and maintains computer software at a company. They use their creativity and technical skills and apply the principles of software engineering to help solve new and ongoing problems for an organization.",
                                        style: // Responsive.isDesktop(context)
                                            Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontSize: 15,
                                                    color: Colors.grey,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    fontWeight:
                                                        FontWeight.normal),
                                        maxLines: 4,
                                      )
                                    : Expanded(
                                        child: Text(
                                          "A Software Engineer is an IT professional who designs, develops and maintains computer software at a company. They use their creativity and technical skills and apply the principles of software engineering to help solve new and ongoing problems for an organization.",
                                          style: // Responsive.isDesktop(context)
                                              Theme.of(context)
                                                  .textTheme
                                                  .subtitle1!
                                                  .copyWith(
                                                      fontSize: 15,
                                                      color: Colors.grey,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontWeight:
                                                          FontWeight.normal),
                                          // : Theme.of(context)
                                          //     .textTheme
                                          //     .subtitle1!
                                          //     .copyWith(
                                          //         fontSize: 9,
                                          //         color: Colors.grey,
                                          //         overflow:
                                          //             TextOverflow.ellipsis,
                                          //         fontWeight:
                                          //             FontWeight.normal),
                                          maxLines: 4,
                                        ),
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: textUtils(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 22.5,
                      text: "My Projects"),
                ),
                Responsive.isDesktop(context)
                    ? Padding(
                        padding: EdgeInsets.all(20),
                        child: GridView.builder(
                          itemCount: ProjectModel.MyProject.length,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 8,
                                  childAspectRatio: 1.3,
                                  mainAxisSpacing: 8),
                          itemBuilder: (BuildContext context, int index) {
                            return ProjectCard(
                              project: ProjectModel.MyProject[index].project,
                              description:
                                  ProjectModel.MyProject[index].description,
                            );
                          },
                        ),
                      )
                    : SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return ProjectCardMobile(
                                  project:
                                      ProjectModel.MyProject[index].project,
                                  description: ProjectModel
                                      .MyProject[index].description);
                            },
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            itemCount: ProjectModel.MyProject.length),
                      ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: textUtils(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 22.5,
                      text: "Some Screenshots of my Projects"),
                ),
                SizedBox(
                  height: 18,
                ),
                ProjectScreen(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: textUtils(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 22.5,
                      text: "Who I'm"),
                ),
                SizedBox(
                  height: 18,
                ),
                AboutMe(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }
}
