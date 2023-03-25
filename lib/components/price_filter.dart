import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatelessWidget {
  const PriceFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price Range',
          style: heading3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Chip(
              //avatar: Icon(Icons.attach_money),
              label: Text(r"$"),
            ),
            Chip(
              // avatar: Icon(Icons.location_city),
              label: Text(r"$$"),
            ),
            Chip(
              // avatar: Icon(Icons.filter),
              label: Text(r"$$$"),
            ),
            Chip(
              // avatar: Icon(Icons.filter_1),
              label: Text(r"$$$$"),
            ),
          ],
        ),
      ],
    );
  }
}
