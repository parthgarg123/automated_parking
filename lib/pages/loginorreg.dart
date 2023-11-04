import 'package:automated_parking/pages/login.dart';
import 'package:automated_parking/pages/register.dart';
import 'package:flutter/material.dart';
class LoginorReg extends StatefulWidget {
  const LoginorReg({super.key});

  @override
  State<LoginorReg> createState() => _LoginorRegState();
}

class _LoginorRegState extends State<LoginorReg> {

  bool showLoginPage = true;
  void togglePage(){
    setState(() {
    showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePage);
    }
    else
      return RegisterPage(
        onTap: togglePage,
      );
  }
}