import 'package:doroco/UI/common/buildingBlocks/colorPalette.dart';
import 'package:flutter/material.dart';

class TextStyleBuilder {
  TextStyleBuilder();

  static TextStyle build(BuildContext context,
      {Color color = ColorPalette.solidBlack,
        FontWeight boldness = regularFontWeight,
        @required double fontSize,
        TextDecoration decoration = TextDecoration.none}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: boldness,
        decoration: decoration);
  }

  static const double extraSmallFontSize = 14.0;
  static const double smallFontSize = 16.0;
  static const double normalFontSize = 18.0;
  static const double mediumFontSize = 20.0;
  static const double largeFontSize = 30.0;

  static const FontWeight boldFontWeight = FontWeight.bold;
  static const FontWeight semiBoldFontWeight = FontWeight.w600;
  static const FontWeight lightBoldFontWeight = FontWeight.w300;
  static const FontWeight regularFontWeight = FontWeight.normal;

}
