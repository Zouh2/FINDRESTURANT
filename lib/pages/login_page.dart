import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findresteau/pages/profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:findresteau/components/my_button.dart';
import 'package:findresteau/components/my_textfield.dart';
import 'package:findresteau/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../services/aut_services.dart';
import 'forgetpassword.dart';
class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key , required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  void passer() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => forgetpassword()),
    );
  }
  void navigateToProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>const DriverProfileSetup()),
    );
  }

  // sign user in method
  void signUserIn() async {

    showDialog(
      context: context, builder: (context)
    {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
    );
try {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: usernameController.text,
    password: passwordController.text,
  );
    Navigator.pop((context));

}on FirebaseAuthException catch (e) {
  Navigator.pop((context));
    if (e.code == 'user-not-found') {
    print('aucun email coonecter ');
       wrongEmailMessage();
    } else if (e.code == 'wrong-password') {
    print('mot de passe incorrecte');
      wrongPasswordMessage();
    }
    }
  }
  void  wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Mot de passe incorrect'),
          content: Text('Le mot de passe que vous avez saisi est incorrect.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void  wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: Text('email incorrect'),
          content: Text('email que vous avez saisi est incorrect.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                // logo
                Image.asset(
                  'lib/images/logo.png',
                  width: 150,
                  height: 150,
                ),

                const SizedBox(height: 20),

                // welcome back, you've been missed!
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                     onTap:  passer,
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // sign in button
                MyButton(
                  texte: "Sing In",
                  onTap: signUserIn,
                ),

                const SizedBox(height: 20),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    // google button
                    SquareTile(
                      onTap: () => AuthService().signInWithGoogle()
                        ,
                        imagePath: 'lib/images/google.png'
                    ),

                    SizedBox(width: 5),

                    // apple button
                    SquareTile(
                        onTap: () => AuthService().singFb(),
                        imagePath: 'lib/images/facebook.png'
                    )
                  ],
                ),

                const SizedBox(height: 30),

                // not a member? register now

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap ,
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
