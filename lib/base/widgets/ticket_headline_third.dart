import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketHeadlineThird extends StatelessWidget {
  final String text;
  const TicketHeadlineThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyles.headlineStyle3.copyWith(color: Colors.white));
  }
}
