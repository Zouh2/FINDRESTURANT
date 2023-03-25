import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int rating;

  const Rating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    int leftStars = 5 - rating;
    if (rating == 5) {
      return Row(
        children: List.generate(
          rating,
          (index) => const Icon(
            Icons.star_rate_rounded,
            color: Colors.yellow,
          ),
        ),
      );
    } else {
      return Row(
        children: [
          Row(
            children: List.generate(
              rating,
              (index) => const Icon(
                Icons.star_rate_rounded,
                color: Colors.yellow,
              ),
            ),
          ),
          Row(
            children: List.generate(
              leftStars,
              (index) => Icon(
                Icons.star_rate_rounded,
                color: iconColor,
              ),
            ),
          ),
        ],
      );
    }
  }
}
