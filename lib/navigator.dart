import 'package:doroco/constants.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator(BuildContext context) : _navigatorState = Navigator.of(context);
  final NavigatorState _navigatorState;

  static AppNavigator of(BuildContext context) {
    return AppNavigator(context);
  }

  Future<void> clearStackAndPushHome() async {
    await _navigatorState.pushNamedAndRemoveUntil(
        RouteName.HOME, (Route<dynamic> route) => false);
  }
}