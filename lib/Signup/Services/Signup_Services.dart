import 'package:dio/dio.dart';
import 'package:untitled5/Login/Models/LoginModels.dart';

class SignUpService {
  static final Dio dio = Dio();

  static Future<LoginModel> registerUser(String name, String email, String password) async {
    try {
      final response = await dio.post(
        "https://todo-app-backend-dusky.vercel.app/api/auth/register",
        data: {
          "username": name,
          "email": email,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        print(response.data);
        return LoginModel.fromjson(response.data); // Adjusted method name here
      } else {
        throw Exception("Failed to register: Server responded with status ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error during registration: $e");
    }
  }
}
