import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Login/Provider/LoginProvider.dart';
import 'package:untitled5/Signup/Provider/Signup_Provider.dart';

import 'Signup/Screen/Signup_Screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>LoginProvider()),
          ChangeNotifierProvider(create: (context)=>SignupProvider()),
        ],
      child: MaterialApp(
        home: SignupScreen(),
      ),
    );
  }
}
