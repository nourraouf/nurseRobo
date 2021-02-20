import 'package:doroco/UI/common/buildingBlocks/TextStyleBuilder.dart';
import 'package:doroco/UI/common/buildingBlocks/colorPalette.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {@required this.onPressed,
      @required this.text,
      this.fillColor = ColorPalette.solidWhite,
      this.fontSize = TextStyleBuilder.normalFontSize,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.min});

  final GestureTapCallback onPressed;
  final String text;
  final Color fillColor;
  final double fontSize;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: fillColor,
      splashColor: Colors.greenAccent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyleBuilder.build(context,
                  color: ColorPalette.solidBlack, fontSize: fontSize),
            )
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
