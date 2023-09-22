import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenHeight = mediaQueryData!.size.height;
    screenWidth = mediaQueryData!.size.width;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  static const smallSpace = SizedBox(
    height: 23,
  );
  static final mediumSpace = SizedBox(
    height: screenHeight! * 0.06,
  );
  static final largeSpace = SizedBox(
    height: screenHeight! * 0.09,
  );

  static const primaryColor=Colors.greenAccent;

  static const outlinetBorder = OutlineInputBorder(
    borderRadius:BorderRadius.all(Radius.circular(8),),
  );
  static const focusBorder = OutlineInputBorder(
   borderRadius:BorderRadius.all(Radius.circular(8),),
    borderSide: BorderSide(
      color: Colors.greenAccent,
    ),
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius:BorderRadius.all(Radius.circular(8),),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
}
