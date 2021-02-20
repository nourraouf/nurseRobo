import 'package:doroco/UI/common/buildingBlocks/colorPalette.dart';
import 'package:doroco/constants.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(color: ColorPalette.solidWhite),
        child: Column(
          children: <Widget>[
            const Spacer(),
            Expanded(
                flex: 5,
                child: Image(
                  image: AssetImage(AssetPath.IMAGE_LOADING),
                  fit: BoxFit.contain,
                )),
            const Spacer()
          ],
        ));
  }
}
