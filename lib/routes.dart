import 'package:doroco/UI/Home/view/home_component.dart';
import 'package:doroco/UI/Login/views/login_component.dart';
import 'package:doroco/constants.dart';
import 'package:flutter/material.dart';

import 'UI/Home/viewModel/home_viewmodel.dart';

typedef _routesFunction = PageRoute<Widget> Function(RouteSettings settings);

final _routesFunction onGenerateRoute = (RouteSettings settings) {
  switch (settings.name) {
    case RouteName.LOGIN:
      return MaterialPageRoute<LoginComponent>(
          builder: (_) => LoginComponent(), settings: settings);

    case RouteName.HOME:
      final HomeViewModel viewModel = settings.arguments;
      return MaterialPageRoute<HomeComponent>(
          builder: (_) => HomeComponent(viewModel), settings: settings);

    default:
      throw Exception("Screen doesn't exist: ${settings.name}");
  }
};
