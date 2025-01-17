import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;

  const LayoutBuilderWidget({super.key, required this.randomDivider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("${constraints.constrainWidth()}");

      int width = constraints.constrainWidth().toInt();
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (width / randomDivider).floor(),
            (index) => SizedBox(
                  width: this.width,
                  height: 1.3,
                  child: const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white)),
                )),
      );
    });
  }
}
