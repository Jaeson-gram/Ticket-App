import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Tabs extends StatelessWidget {
  final String text1;
  final String text2;
  const Tabs({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4f6fd),
      ),
      child: const Row(children: [
        AppTabs(tabText: 'All Tickets'),
        AppTabs(tabText: 'Hotels', tabBorder: false, tabColor: false)

      ]),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  const AppTabs(
      {super.key,
      required this.tabText,
      this.tabBorder = true,
      this.tabColor = true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * .44,
      decoration: BoxDecoration(
        color: tabColor == true ? Colors.white : Colors.transparent,
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(right: Radius.circular(50))
            : const BorderRadius.horizontal(left: Radius.circular(50)),
      ),
      child: Center(child: Text(tabText, style: AppStyles.textStyle)),
    );
  }
}
