import 'package:exemplo1/breakpoints.dart';
import 'package:exemplo1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/sections/advantages_section.dart';
import 'package:exemplo1/pages/home/widgets/sections/curses_section.dart';
import 'package:exemplo1/pages/home/widgets/sections/top_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(constraints.maxWidth, 56),
              )
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(constraints.maxWidth, 72),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
        body: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: [
                TopSection(),
                AdvantagesSection(),
                CursesSection(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
