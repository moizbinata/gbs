import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gbs/utils/constants.dart';
import 'package:gbs/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

Widget boldBlackText(String title) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: SizeConfig.textMultiplier * 2.3,
      fontWeight: FontWeight.w600,
    ),
    overflow: TextOverflow.ellipsis,
  );
}

Widget screenLoader() {
  return Container(
    width: SizeConfig.screenWidth,
    height: SizeConfig.screenHeight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: Constants.primaryColor,
        ),
      ],
    ),
  );
}

Widget regularText(
    String title, double size, Color color, FontWeight fontWeight) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.left,
    maxLines: 3,
    style: GoogleFonts.poppins(
        color: color,
        fontSize: SizeConfig.textMultiplier * size,
        fontWeight: fontWeight),
  );
}

InputDecoration fieldDecoration(String hint) {
  return InputDecoration(
    fillColor: Colors.white,
    filled: true,
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
    hintText: hint,
    hintStyle: TextStyle(
        color: Constants.darkGrey,
        fontSize: SizeConfig.textMultiplier * 1.8,
        fontWeight: FontWeight.w600),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Constants.lightGrey),
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Constants.lightGrey),
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Constants.lightGrey),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Constants.lightGrey),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

Widget fetchingLoader() {
  return Center(
    child: new ClipRect(
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: CupertinoActivityIndicator(
          radius: 20.0,
        ),
      ),
    ),
  );
}
