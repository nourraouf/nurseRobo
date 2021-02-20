import 'package:doroco/UI/common/loadingScreen.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold(
      {@required this.scaffoldKey,
      @required this.formKey,
      @required this.backgroundColor,
      @required this.children,
      this.isLoading = false});

  final GlobalKey<ScaffoldState> scaffoldKey;
  final GlobalKey<FormState> formKey;
  final Color backgroundColor;
  final Widget children;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final Widget progressIndicator = LoadingScreen();
    final Widget stackContainer = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: backgroundColor,
        child: isLoading ? progressIndicator : children);

    return Scaffold(
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            _dismissKeyboard(context);
          },
          child: stackContainer),
    );
  }

  void _dismissKeyboard(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
