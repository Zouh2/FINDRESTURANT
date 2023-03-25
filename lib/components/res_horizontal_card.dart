import 'package:findresteau/components/rating.dart';
import 'package:findresteau/utilis/functions.dart';
import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class ResHorizontalCard extends StatelessWidget {
  const ResHorizontalCard(
      {required this.restaurantName,
      required this.rating,
      required this.imageUrl,
      super.key});

  final String restaurantName;
  final double rating;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double _distance = calcDistance(
        LatLng(33.99452490, -6.82504580), LatLng(34.03122000, -6.81662600));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: xsmall,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    restaurantName,
                    style: heading3,
                  ),
                  SizedBox(
                    height: xsmall,
                  ),
                  Rating(
                    rating: rating.toInt(),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: iconColor,
              ),
              Text(
                '$_distance Km',
                style: p2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
