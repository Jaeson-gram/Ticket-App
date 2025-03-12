import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  final String text;
  const FindTickets({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyles.findTicketsButtonColor),
      child: Center(
          child: Text(
        text,
        style: AppStyles.textStyle.copyWith(color: Colors.white),
      )),
    );
  }
}
