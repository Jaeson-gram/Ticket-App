import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
// import 'package:ticket_app/screens/all_tickets_screen.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({super.key, required this.bigText, required this.smallText, required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headlineStyle2),
        InkWell(
          onTap: func,
          child: Text(smallText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}

// class SomeClass {
//   var x;
//   var y;
// }

// SomeClass CopyWith({int? x, int? y}){
//   return SomeClass(,x:x??this.x, y:??this.y);
// }

//var some = 

//just to explain how copyWith works. when you call it, it calls the widget you're copying from, but assigns a new value - only the one you're mentioning.
//which happens to be color in our case. it copies all the vales from the widget object you're using in the moment in real time. so our fontsize here is still 16 as defined in AppStyles.textStyle
