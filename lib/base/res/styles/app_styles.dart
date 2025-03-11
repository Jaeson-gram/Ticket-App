import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  // static Color linkColor = const Color.fromARGB(255, 84, 108, 176);
  static Color iconsColor = const Color(0xFFBFC205);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static Color kaki = const Color(0xFFd2bdb6);
  static Color planesColor = const Color(0xffbfc2df);

  //textstyles
  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle3 =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

        static TextStyle headlineStyle4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  // static TextStyle linkStyle =
  //     TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: linkColor);
}
