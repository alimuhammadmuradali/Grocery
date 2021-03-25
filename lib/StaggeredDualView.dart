import 'package:flutter/material.dart';



class StaggeredDualView extends StatelessWidget {

  final itemBuilder;
  final int ItemCount;
  final double spacing;
  final double aspectRatio;

  const StaggeredDualView(
      {Key key,
        @required this.itemBuilder,
        @required this.ItemCount,
        this.spacing = 0,
        this.aspectRatio = 0.5}
        ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: aspectRatio,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing
        ), itemBuilder: itemBuilder);
  }
}
