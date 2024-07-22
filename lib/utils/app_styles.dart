import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return const TextStyle(
      color: Color(0xff064060),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return const TextStyle(
      color: Color(0xff064060),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return const TextStyle(
      color: Color(0xff064060),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return const TextStyle(
      color: Color(0xff064060),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return const TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return const TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return const TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return const TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return const TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(context) {
    return const TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizedConfig.tablet) {
    return width / 550;
  } else if (width < SizedConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
