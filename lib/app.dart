import 'package:doroco/UI/common/buildingBlocks/colorPalette.dart';
import 'package:doroco/constants.dart';
import 'package:doroco/routes.dart';
import 'package:flutter/material.dart';
import 'local.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Local.title,
        theme: ThemeData(
            primarySwatch: ColorPalette.solidCyan,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: RouteName.LOGIN,
        onGenerateRoute: onGenerateRoute,
    );
  }
}
