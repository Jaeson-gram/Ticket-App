import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/ticket_headline_third.dart';

class TicketColumnLayoutText extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment widgetCrossAxisAlignment;

  const TicketColumnLayoutText(
      {super.key, required this.topText, required this.bottomText, required this.widgetCrossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widgetCrossAxisAlignment,

      children: [
        TicketHeadlineThird(text: topText),
        const SizedBox(height: 3),
        TicketHeadlineThird(text: bottomText),
      ],
    );
  }
}
