import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-30
/// contact me by email 1981462002@qq.com

class CustomScrollConfiguration extends StatelessWidget {
  const CustomScrollConfiguration({super.key});

   List<Color> get data => [
    Colors.cyan[50]!,
    Colors.cyan[100]!,
    Colors.cyan[200]!,
    Colors.cyan[300]!,
    Colors.cyan[400]!,
    Colors.cyan[500]!,
    Colors.cyan[600]!,
    Colors.cyan[700]!,
    Colors.cyan[800]!,
    Colors.cyan[900]!,
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ScrollConfiguration(
          behavior: NoScrollBehavior(), child: _buildListView()),
    );
  }

  Widget _buildListView() => ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: data
            .map((color) => Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: color,
                  child: Text(
                    colorString(color),
                    style: const TextStyle(color: Colors.white, shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(.5, .5),
                          blurRadius: 2)
                    ]),
                  ),
                ))
            .toList(),
      );

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";
}

class NoScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
          BuildContext context, Widget child, AxisDirection axisDirection) =>
      child;
}
