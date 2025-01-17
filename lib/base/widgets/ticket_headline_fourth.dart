import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketHeadlineFourth extends StatelessWidget {
  final String text;
  final TextAlign align;

  const TicketHeadlineFourth(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text('Port-Harcourt',
          textAlign: align,
          style: AppStyles.headlineStyle4.copyWith(color: Colors.white)),
    );
  }
}
