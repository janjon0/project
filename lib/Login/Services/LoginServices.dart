import 'package:dio/dio.dart';

import '../Models/LoginModels.dart';

class LoginServices {
  static Dio dio = Dio();

  static Future<LoginModel> Addalllogin(String email, String Password) async {
    try {
      Response response = await dio.post(
          'https://todo-app-backend-dusky.vercel.app/api/auth/login',
          data: {
            "email": email,
            "password": Password
          }
      );
      if (response == 200) {
        print(response.statusCode);
        return LoginModel.fromjson(response.data);
      }else{
        throw Exception('There is an Error');
      }
    }catch(e){
      throw Exception(e);
    }
  }
}