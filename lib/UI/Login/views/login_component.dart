import 'package:auto_size_text/auto_size_text.dart';
import 'package:doroco/UI/Login/process/login_process.dart';
import 'package:doroco/UI/Login/views/login_view.dart';
import 'package:doroco/UI/common/buildingBlocks/TextStyleBuilder.dart';
import 'package:doroco/UI/common/buildingBlocks/colorPalette.dart';
import 'package:doroco/UI/common/mainButton.dart';
import 'package:doroco/UI/common/maniScaffold.dart';
import 'package:doroco/constants.dart';
import 'package:doroco/local.dart';
import 'package:doroco/navigator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class LoginComponent extends StatefulWidget {
  LoginComponent() : presenter = BasicLoginModel();

  final LoginProcess presenter;

  @override
  State<StatefulWidget> createState() =>
      presenter.view = _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> implements LoginView {
  final GlobalKey<FormState> _formKey = GlobalKey(debugLabel: 'form');
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _loading = false;
  bool _hidePasswordText = true;

  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        formKey: _formKey,
        scaffoldKey: _scaffoldKey,
        backgroundColor: ColorPalette.solidCyan,
        children: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 2),
              Expanded(
                  flex: 4,
                  child: SvgPicture.asset(AssetPath.IMAGE_Robot,
                      width: double.maxFinite, height: double.maxFinite)),
              Expanded(flex: 10, child: _buildInputForm()),
              const Spacer(flex: 1)
            ],
          ),
        ),
        isLoading: _loading);
  }

  Widget _buildInputForm() {
    final TextStyle fieldsStyle = TextStyleBuilder.build(context,
        boldness: FontWeight.w500, fontSize: TextStyleBuilder.normalFontSize);

    final TextStyle _titleTextStyle = TextStyleBuilder.build(context,
        fontSize: TextStyleBuilder.largeFontSize,
        color: ColorPalette.solidWhite,
        boldness: TextStyleBuilder.boldFontWeight);

    return Form(
        autovalidateMode: _autoValidateMode,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AutoSizeText(Local.welcome, style: _titleTextStyle),
            FractionallySizedBox(
                widthFactor: .8,
                child: _getTextField(
                    fieldsStyle, Local.phoneNumber, _phoneNumberController,
                    keyboardType: TextInputType.phone)),
            FractionallySizedBox(
                widthFactor: .8,
                child: _getTextField(
                    fieldsStyle, Local.password, _passwordController,
                    obscureText: _hidePasswordText,
                    suffixIcon: _buildPasswordVisibilityIcon())),
            FractionallySizedBox(
              widthFactor: .5,
              child: _loginButton(),
            )
          ],
        ));
  }

  Widget _loginButton() {
    return MainButton(
      onPressed: () {
        widget.presenter.phoneNumber = _phoneNumberController.text;
        widget.presenter.password = _passwordController.text;
        widget.presenter.isLogging();
      },
      text: Local.login,
    );
  }

  Widget _getTextField(
    TextStyle fieldsStyle,
    String labelText,
    TextEditingController controller, {
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    Widget suffixIcon,
  }) {
    return Card(
        child: TextFormField(
          style: fieldsStyle,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            labelStyle: fieldsStyle,
            labelText: labelText,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          ),
          obscureText: obscureText,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)));
  }

  Widget _buildPasswordVisibilityIcon() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _hidePasswordText = !_hidePasswordText;
          });
        },
        child: Icon(
          _hidePasswordText ? Icons.visibility_off : Icons.visibility,
        ),
      ),
    );
  }

  @override
  void isLoading(bool state) {
    setState(() {
      print('asd');
      _loading = state;
    });
  }

  @override
  void goHome() {
    AppNavigator.of(context).clearStackAndPushHome();
  }
}
