import 'package:doroco/UI/Login/views/login_component.dart';
import 'package:doroco/constants.dart';
import 'package:flutter/material.dart';
import 'UI/Login/viewmodel/login_viewmodel.dart';

typedef _routesFunction = PageRoute<Widget> Function(RouteSettings settings);
final _routesFunction onGenerateRoute = (RouteSettings settings) {
  switch (settings.name) {
    case RouteName.Login_Screen:
      final LoginViewModel viewModel = settings.arguments;
      return MaterialPageRoute<LoginComponent>(
          builder: (_) => LoginComponent(viewModel),
          settings: settings);
    default:
      throw Exception("Screen doesn't exist: ${settings.name}");
  }
};