import 'package:findresteau/components/password_field.dart';
import 'package:flutter/material.dart';

import '../../components/input_field.dart';
import '../../components/primary_button.dart';
import '../../utilis/style.dart';

import 'package:firebase_auth/firebase_auth.dart';

class EditPasswordPage extends StatefulWidget {
  const EditPasswordPage({Key? key}) : super(key: key);

  @override
  _EditPasswordPageState createState() => _EditPasswordPageState();
}

class _EditPasswordPageState extends State<EditPasswordPage> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() async {
    // Perform password update logic here using Firebase
    // Example:
    try {
      await FirebaseAuth.instance.currentUser!.updatePassword(_newPasswordController.text);
      // Password update successful
    } catch (e) {
      // Handle password update failure
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Edit your password',
                    style: heading3,
                  ),
                  SizedBox(
                    height: medium,
                  ),
                  PasswordField(
                    hintText: 'Old password',
                    controller: _oldPasswordController,
                  ),
                  SizedBox(
                    height: small,
                  ),
                  PasswordField(
                    hintText: 'New Password',
                    controller: _newPasswordController,
                  ),
                  SizedBox(
                    height: small,
                  ),
                  PasswordField(
                    hintText: 'Re-enter the new password',
                    controller: _confirmPasswordController,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PrimaryButton(
                    textContent: "Save",
                    onPressed: _submitForm,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
