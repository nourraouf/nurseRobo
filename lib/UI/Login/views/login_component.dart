import 'package:doroco/UI/Login/model/login_model.dart';
import 'package:doroco/UI/Login/viewmodel/login_viewmodel.dart';
import 'package:doroco/UI/Login/views/login_view.dart';
import 'package:flutter/material.dart';

class LoginComponent extends StatefulWidget {
  LoginComponent(this._viewModel) : presenter = BasicLoginModel();

  final LoginModel presenter;
  final LoginViewModel _viewModel;

  @override
  State<StatefulWidget> createState() =>
      presenter.view = _LoginComponentState(_viewModel);
}

class _LoginComponentState extends State<LoginComponent>
    implements LoginView {
  _LoginComponentState(this._viewModel);

  final LoginViewModel _viewModel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw Scaffold(body: Container());
  }
}