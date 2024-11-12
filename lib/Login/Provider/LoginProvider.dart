import 'package:flutter/material.dart';
import 'package:untitled5/Login/Models/LoginModels.dart';
import 'package:untitled5/Login/Services/LoginServices.dart';

class LoginProvider extends ChangeNotifier{
    LoginModel ?loginModel;
    Future<bool> fitchdata(String email,String Password)async {
      try {
        loginModel = await LoginServices.Addalllogin(email, Password);
        notifyListeners();
        return true;
      }catch(e){
        throw Exception(e);
        return false;
      }
    }
}