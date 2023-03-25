import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class updateProfil extends StatelessWidget {
  const updateProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()  { Navigator.pop(context);
        }, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text("Update Profile",style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}


