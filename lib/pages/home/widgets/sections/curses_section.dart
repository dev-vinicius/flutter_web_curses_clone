import 'package:exemplo1/breakpoints.dart';
import 'package:exemplo1/pages/home/widgets/curse_item.dart';
import 'package:flutter/material.dart';

class CursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: constraints.maxWidth >= tabletBreakpoint
              ? 0
              : 16,
        ),
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CurseItem();
        },
      );
    });
  }
}
