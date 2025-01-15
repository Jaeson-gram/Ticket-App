import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/two_dots.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 169, //will be the same height regardless of the screen size
      child: Container(
        margin: const EdgeInsets.only(right: 16, left: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('NYC',
                    style:
                        AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                Expanded(child: Container()),
                const TwoDots(),
                const Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: LayoutBuilderWidget(randomDivider: 6),
                    ),
                    // Center(
                    //     child: Text('Plane',
                    //         style: TextStyle(color: Colors.white)))
                  ],
                )),
                const TwoDots(),
                Expanded(child: Container()),
                Text('NYC',
                    style:
                        AppStyles.headlineStyle3.copyWith(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
