class LoginModel{
  String Token;
  LoginModel({
    required this.Token
  });
  factory LoginModel.fromjson(Map<String ,dynamic>json){
    return LoginModel(
        Token: json['json']
    );
  }
}