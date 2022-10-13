// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {Key? key, required this.project, required this.description})
      : super(key: key);

  final String project;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardProject,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              project,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  height: 1.5,
                  fontSize: 14,
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold),
              maxLines: 3,
            ),
          ),
          Expanded(
            child: Text(
              description,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Expanded(
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
    );
  }
}
