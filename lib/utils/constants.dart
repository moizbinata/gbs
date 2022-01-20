import 'package:flutter/material.dart';

class Constants {
  static final baseUrl = "https://itsuppudhaivi.com/";
  static final darkGrey = Colors.grey; //007a99//0070c0
  static final watchPrimary = Color(0xff0070c0); //007a99//0070c0
  static final primaryColor = Color(0xff00d632); //007a99
  static final secondaryColor = Color(0xff5cc48b); //2c9c5e
  static final blue1 = Color(0xffabe4ff);
  static final bgblue = Color(0xffe3f3fa);
  static final green = Color(0xff5fbb88); //979797
  static final grey = Color(0xffA5A5A5); //5fbb88
  static final lightblue = Color(0xffdef3ff); //f2f2f2
  static final blue2 = Color(0xff0070C0); //bb5f5f
  static final darkGreen = Color(0x00007a99);
  static final lightGrey = Color(0xfffe5efef);
  static final red = Color(0xffbb5f5f); //338dcc
  static final blueBtn = Color(0xff338dcc); //cbedff
  static final blueIcon = Color(0xffa1d8f5); //cbedff

  static final iconColor = Color(0xff0C1A32).withOpacity(0.4);
  static final black = Colors.black;
  // static final requiredValidator =
  //     RequiredValidator(errorText: 'this field is required');
  static Widget loader() => Center(
          child: CircularProgressIndicator(
        backgroundColor: Constants.secondaryColor,
        color: Constants.primaryColor,
      ));

  // static Future<SharedPreferences> init() async {
  //   prefs = await _instance;
  //   return prefs;
  // }
}
