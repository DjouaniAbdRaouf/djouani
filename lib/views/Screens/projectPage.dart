// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/models/projects_model.dart';
import 'package:portfolio/theme.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: CarouselSlider.builder(
        itemCount: ProjectModel.ImagesForWeb.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          String path = ProjectModel.ImagesForWeb[itemIndex];
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: secondary.withOpacity(0.3),
                image: DecorationImage(
                  image: AssetImage("assets/$path"),
                )),
          );
        },
        options: CarouselOptions(
            autoPlayInterval: Duration(seconds: 2),
            height: 400.0,
            autoPlay: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height),
      ),
    );
  }
}
