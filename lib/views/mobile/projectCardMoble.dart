// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class ProjectCardMobile extends StatelessWidget {
  const ProjectCardMobile(
      {Key? key, required this.project, required this.description})
      : super(key: key);

  final String project;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        color: secondary,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  height: 1.5,
                  fontSize: 14,
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold),
              maxLines: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print(project);
              },
              child: Text(
                "Read More...",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.amber.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
