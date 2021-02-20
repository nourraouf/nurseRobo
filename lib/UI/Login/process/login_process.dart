import 'package:doroco/UI/Login/views/login_view.dart';
import 'package:doroco/UI/common/model.dart';

abstract class LoginProcess extends Process<LoginView> {
  void isLogging();

  set phoneNumber(String value);

  set password(String value);
}

class BasicLoginModel extends LoginProcess {
  String _phoneNumber;
  String _password;

  @override
  void isLogging() {
    view.isLoading(true);
    try{
      //TODO: call your API for Login
      //TODO: let's descus how we are going to save the user info
    }catch(e){
      view.isLoading(false);
      //TODO: do what ever in case of no response came
      return;
    }

    view.isLoading(false);
    view.goHome();
  }

  @override
  set password(String value) {
    _password = value;
  }

  @override
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

}