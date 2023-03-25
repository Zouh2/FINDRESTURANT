import 'package:findresteau/components/res_horizontal_card.dart';
import 'package:findresteau/models/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantListView extends StatelessWidget {
  final List<Restaurant> restaurants;

  const RestaurantListView({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return ResHorizontalCard(
            restaurantName: restaurants[index].name,
            rating: restaurants[index].rating,
            imageUrl: restaurants[index].imageUrl,
          );
        },
      ),
    );
  }
}
