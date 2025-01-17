import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_column_layout_text.dart';
import 'package:ticket_app/base/widgets/ticket_headline_fourth.dart';
import 'package:ticket_app/base/widgets/ticket_headline_third.dart';
import 'package:ticket_app/base/widgets/two_dots.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189, //will be the same height regardless of the screen size
      child: Container(
        margin: const EdgeInsets.only(right: 16, left: 10),
        child: Column(
          children: [
            //Blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //Departure and destination with airplane icon
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TicketHeadlineThird(text: 'PH'),
                      Expanded(child: Container()),
                      const TwoDots(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: LayoutBuilderWidget(randomDivider: 6),
                          ),
                          Transform.rotate(
                              angle: 1.45,
                              child: const Center(
                                  child: Icon(Icons.local_airport_rounded,
                                      color: Colors.white))),
                        ],
                      )),
                      const TwoDots(),
                      Expanded(child: Container()),
                      const TicketHeadlineThird(text: 'ABJ')
                    ],
                  ),
                  const SizedBox(height: 3),
                  //Show departure and destination full names with time
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TicketHeadlineFourth(text: 'Port Harcourt'),
                      Expanded(child: Container()),
                      Text('8H 02M',
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const TicketHeadlineFourth(
                          text: 'Abuja', align: TextAlign.end)
                    ],
                  ),
                ],
              ),
            ),
            //Big circles in the middle with a line
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRightSide: false,
                  ),
                  Expanded(
                      child: LayoutBuilderWidget(
                    randomDivider: 10,
                    width: 6,
                  )),
                  BigCircle(
                    isRightSide: true,
                  ),
                ],
              ),
            ),
            //Orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: const Column(
                children: [
                  //Departure and destination with airplane icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnLayoutText(
                          topText: '03 April', bottomText: 'Date', widgetCrossAxisAlignment: CrossAxisAlignment.start),

                      TicketColumnLayoutText(
                          topText: '08:30 AM',
                          bottomText: 'Departure time',
                          widgetCrossAxisAlignment: CrossAxisAlignment.center),

                      TicketColumnLayoutText(
                          topText: '023',
                          bottomText: 'Flight no.',
                          widgetCrossAxisAlignment: CrossAxisAlignment.end),

                      // Expanded(child: Container()),
                      // Text('11:00 AM',
                      //     style: AppStyles.headlineStyle3
                      //         .copyWith(color: Colors.white)),
                      // Expanded(child: Container()),
                      // Text('023',
                      //     style: AppStyles.headlineStyle3
                      //         .copyWith(color: Colors.white))
                    ],
                  ),
                  //Show departure and destination full names with time
                  // Row(
                  //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     SizedBox(
                  //       width: 100,
                  //       child: Text('Date',
                  //           style: AppStyles.headlineStyle4
                  //               .copyWith(color: Colors.white)),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       'Departure Time',
                  //       style: AppStyles.headlineStyle4
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     SizedBox(
                  //       width: 100,
                  //       child: Text('Seat Number',
                  //           textAlign: TextAlign.end,
                  //           style: AppStyles.headlineStyle4
                  //               .copyWith(color: Colors.white)),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
