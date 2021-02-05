import 'package:doroco/UI/Login/views/login_view.dart';
import 'package:doroco/UI/common/model.dart';

abstract class LoginModel extends Model<LoginView> {}

class BasicLoginModel extends LoginModel {
  BasicLoginModel();
}