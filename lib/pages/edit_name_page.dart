import 'package:flutter/material.dart';

import '../../components/input_field.dart';
import '../../components/primary_button.dart';
import '../../utilis/style.dart';

class EditNamePage extends StatelessWidget {
  final String currentValue;
  const EditNamePage({super.key, required this.currentValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Full Name"),
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
                  InputField(
                    leadingIcon: Icons.person_outline,
                    hintText: currentValue,
                    isDiable: true,
                    inputType: TextInputType.name,
                  ),
                  SizedBox(
                    height: large,
                  ),
                  Text(
                    'Type your Name',
                    style: heading3,
                  ),
                  SizedBox(
                    height: medium,
                  ),
                  const InputField(
                    leadingIcon: Icons.person_outline,
                    hintText: "Name",
                    isDiable: false,
                    inputType: TextInputType.name,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
