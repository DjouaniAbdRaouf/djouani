// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:portfolio/Responsive.dart';
import 'package:portfolio/theme.dart';

import 'package:portfolio/views/widgets/PrincipalWidget.dart/DrawerInformation.dart';
import 'package:portfolio/views/widgets/PrincipalWidget.dart/HomeScreenInformation.dart';
import 'package:portfolio/views/widgets/comp/MenuSide.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: primary,
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu));
              }),
              elevation: 0.0,
            ),
      body: Row(
        children: [
          if (Responsive.isDesktop(context)) DrawerInformation(),
          HomeScreenInformation()
        ],
      ),
    );
  }
}
