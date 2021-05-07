class RegisterUser {
  String userEmail;
  String userPassword;
  String userName;

  RegisterUser({this.userEmail, this.userPassword, this.userName});

  RegisterUser.fromJson(Map<String, dynamic> json) {
    userEmail = json['userEmail'];
    userPassword = json['userPassword'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userEmail'] = this.userEmail;
    data['userPassword'] = this.userPassword;
    data['userName'] = this.userName;
    return data;
  }
}