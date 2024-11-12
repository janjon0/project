import 'package:flutter/cupertino.dart';
import 'package:untitled5/Login/Models/LoginModels.dart';
import 'package:untitled5/Signup/Services/Signup_Services.dart';

class SignupProvider extends ChangeNotifier{
    LoginModel?loginModel;
    Future<bool>fitchhdata(String email,String name,String password)async{
      try{
        loginModel=await SignUpService.registerUser(name, email, password);
        notifyListeners();
        return true;
      }catch(e){
        throw Exception(e);
      }
    }
}