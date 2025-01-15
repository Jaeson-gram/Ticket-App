import 'package:flutter/material.dart';

class TwoDots extends StatelessWidget {
  const TwoDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
