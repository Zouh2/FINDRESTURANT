import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';

class CuisineTypeFilter extends StatelessWidget {
  const CuisineTypeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Cuisine Type',
            style: heading3,
          ),
          Wrap(
            children: [
              const Chip(
                //avatar: Icon(Icons.attach_money),
                label: Text('Morrocan'),
              ),
              SizedBox(
                width: xsmall,
              ),
              const Chip(
                // avatar: Icon(Icons.location_city),
                label: Text('Traditional'),
              ),
              SizedBox(
                width: xsmall,
              ),
              const Chip(
                // avatar: Icon(Icons.filter),
                label: Text('Fast Food'),
              ),
              SizedBox(
                width: xsmall,
              ),
              const Chip(
                // avatar: Icon(Icons.filter_1),
                label: Text('Cham'),
              ),
              SizedBox(
                width: xsmall,
              ),
              const Chip(
                // avatar: Icon(Icons.filter_1),
                label: Text('Italy'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
