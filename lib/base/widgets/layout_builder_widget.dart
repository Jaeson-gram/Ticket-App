import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;

  const LayoutBuilderWidget({super.key, required this.randomDivider});

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
            (index) => const SizedBox(
                  width: 2,
                  height: 1.3,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white)),
                )),
      );
    });
  }
}
