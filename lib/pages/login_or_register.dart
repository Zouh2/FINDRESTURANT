import 'package:findresteau/pages/login_page.dart';
import 'package:findresteau/pages/registerPage.dart';
import 'package:flutter/material.dart';

class loginorregister extends StatefulWidget {
  const loginorregister({Key? key}) : super(key: key);

  @override
  State<loginorregister> createState() => _loginorregisterState();
}

class _loginorregisterState extends State<loginorregister> {

bool showLoginPage = true;
void togglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}

  @override
  Widget build(BuildContext context) {
  if(showLoginPage){
    return LoginPage(
      onTap: togglePages,
    );
  }
  else{
    return registerPage(
      onTap: togglePages
    );
  }
  }
}

