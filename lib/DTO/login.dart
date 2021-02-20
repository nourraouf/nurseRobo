
class Login {
  final String username, password, token;

  Login(this.username, this.password, this.token);

  Login.fromJson(Map<String, dynamic> json)
      : username = json[LoginFields.username],
        token = json[LoginFields.token],
        password = json[LoginFields.password];

  Map<String, dynamic> toJson() => {
    LoginFields.username: username,
    LoginFields.token: token,
    LoginFields.password: password
      };
}
class LoginFields {
  static const username = 'username';
  static const token = 'token';
  static const password = 'password';
}