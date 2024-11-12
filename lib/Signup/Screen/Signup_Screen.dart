import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/Signup/Provider/Signup_Provider.dart';

class SignupScreen extends StatelessWidget {
   TextEditingController Email=TextEditingController();
  TextEditingController Password=TextEditingController();
   TextEditingController Username=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Consumer<SignupProvider>(
          builder: ( context,  value, child) {
           return Container(
             child: Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                       hintText: "Email",
                       border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                   ),
                   controller: Email,
                 ),
                 SizedBox(
                  height: 20,
                 ),
                 TextFormField(
                 decoration: InputDecoration(
                 hintText: "Email",
            border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
            ),
            controller: Password,
            ),
                 TextFormField(
            decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
            ),
            controller: Username,
            ),
               ],
             ),
           );

          },

        ),
      ),
    );
  }
}
