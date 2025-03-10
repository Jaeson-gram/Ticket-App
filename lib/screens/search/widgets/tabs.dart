import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final String text1;
  final String text2;
  const Tabs({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4f6fd),
      ),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          width: size.width * .44,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50))),
          child: Center(child: Text(text1)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          width: size.width * .44,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(50),
            ),
          ),
          child: Center(child: Text(text2)),
        ),
      ]),
    );
  }
}
