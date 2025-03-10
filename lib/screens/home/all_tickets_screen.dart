import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Tickets'),
      ),
      body: ListView(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: ticketList
                .map((singleTicket) => Container(
                    margin: const EdgeInsets.only(bottom: 20, left: 34),
                    child: TicketView(
                      ticket: singleTicket,
                      // wholeScreen: true,
                    )))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
