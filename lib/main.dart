import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/home/all_tickets_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(),
      debugShowCheckedModeBanner: false,

      // home: const BottomNavBar(),
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTicketsPage: (context) => const AllTicketsScreen(),
      },
    );
  }
}
