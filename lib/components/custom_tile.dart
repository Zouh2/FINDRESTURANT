import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTile extends StatelessWidget {
  final Icon leadingIcon;
  final String textTile;
  final VoidCallback? onEditPressed;

  const CustomTile({
    Key? key,
    required this.leadingIcon,
    required this.textTile,
    this.onEditPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          textTile,
          style: tileTitle,
        ),
        tileColor: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: onEditPressed,
        ),
      ),
    );
  }
}
