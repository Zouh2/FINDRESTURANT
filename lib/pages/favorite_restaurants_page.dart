import 'package:findresteau/components/res_horizontal_card.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import '../models/restaurant.dart';

class FavoriteRestaurantsPage extends StatelessWidget {
  const FavoriteRestaurantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Restaurant> restaurants = [
      Restaurant(
          'Dar Fawakih',
          'dar_fawakih_desc',
          LatLng(33.99452490, -6.82504580),
          4.0,
          "PIZZERIA Dar Alfawakih، Rabat, Morocco",
          'images/dar_alfawakih.jpg',
          2,
          'Morrocan'),
      Restaurant(
          'Yamali Acham',
          'yamali_cham_desc',
          LatLng(34.00243980, -6.85094190),
          5.0,
          "PYamal Acham, Avenue Fal Ould Oumeir, Rabat, Morocco",
          'images/yamali_cham.jpg',
          3,
          'Cham'),
      Restaurant(
          'KFC',
          'kfc_desc',
          LatLng(34.02135290, -6.83960620),
          3.0,
          "KFC- Madina Rabat, N1, Rabat, Morocco",
          'images/kfc.png',
          2,
          'Fast Food'),
      Restaurant(
          'MacDonald',
          'macdonald_desc',
          LatLng(34.03122000, -6.81662600),
          2.0,
          "McDonald's, Avenue de Fès, Salé, Morocco",
          'images/mcdonalds.jpg',
          2,
          'Fast Food'),
      Restaurant(
          'Abtal Acham',
          'abtal',
          LatLng(34.01628490, -6.83462930),
          4.0,
          "Chawarma Abtal Acham Rabat ville, Avenue Abou Faris Al Marini, Rabat, Morocco",
          'images/abtal_cham.jpg',
          1,
          'Cham'),
      Restaurant(
          'Dar Najji',
          'dar_najji_desc',
          LatLng(34.02183530, -6.84194150),
          4.0,
          "Dar Naji Rabat Hassan, Avenue Jazirat Al Arabe, Rabat, Morocco",
          'images/dar_naji.jpg',
          2,
          'Mix'),
      Restaurant(
          'Chizz Mia',
          'chizz_mia_desc',
          LatLng(33.981074, -6.826227),
          3.0,
          "Chizza Mia takkadoum rabat",
          'images/chizza_mia.jpg',
          2,
          'Fast Food'),
    ];

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        return ResHorizontalCard(
          restaurantName: restaurants[index].name,
          rating: restaurants[index].rating,
          imageUrl: restaurants[index].imageUrl,
        );
      },
    );
  }
}
