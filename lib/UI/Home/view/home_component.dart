import 'package:doroco/UI/Home/process/home_process.dart';
import 'package:doroco/UI/Home/view/home_view.dart';
import 'package:doroco/UI/Home/viewModel/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  HomeComponent(this.viewModel) : presenter = BasicHomeModel();

  final HomeProcess presenter;
  final HomeViewModel viewModel;

  @override
  State<StatefulWidget> createState() => presenter.view = _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> implements HomeView {
  _HomeComponentState();

  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }

  @override
  void isLoading(bool state) {
    setState(() {
      _loading = state;
    });
  }
}
