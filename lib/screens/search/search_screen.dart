import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/search_screen_promotion.dart';
import 'package:ticket_app/screens/search/widgets/tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 20),
          Text('What are \nyou looking for?',
              style: AppStyles.headlineStyle1.copyWith(fontSize: 35)),
          const SizedBox(height: 20),
          const Tabs(text1: 'Airline tickets', text2: 'Hotels'),
          const SizedBox(height: 25),
          const AppTextIcon(
              text: 'Destination', icon: Icons.flight_takeoff_rounded),
          const SizedBox(height: 20),
          const AppTextIcon(text: 'Arrival', icon: Icons.flight_land_rounded),
          const SizedBox(height: 20),
          const FindTickets(text: 'Find tickets'),
          const SizedBox(height: 40),
          DoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTicketsPage),
          ),
          const SizedBox(
            height: 15,
          ),
          const SearchScreenPromotion()
        ],
      ),
    );
  }
}
