import 'package:findresteau/components/cuisine_type_filter.dart';
import 'package:findresteau/components/map_view.dart';
import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import '../components/list_view.dart';
import '../components/price_filter.dart';
import '../components/search_bar.dart';
import '../models/restaurant.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool isMapView = true;
  bool isFiltersVisible = false;
  int pageIndex = 1;

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
    Restaurant('Chizz Mia', 'chizz_mia_desc', LatLng(33.981074, -6.826227), 3.0,
        "Chizza Mia takkadoum rabat", 'images/chizza_mia.jpg', 2, 'Fast Food'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Expanded(
                flex: isFiltersVisible ? 9 : 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Column(
                    children: [
                      SearchSection(
                          isFilterVisible: isFiltersVisible,
                          onToggleFilter: () {
                            setState(() {
                              isFiltersVisible = !isFiltersVisible;
                            });
                          }),
                      Visibility(
                        visible: isFiltersVisible,
                        child: const PriceFilter(),
                      ),
                      SizedBox(
                        height: xsmall,
                      ),
                      Visibility(
                        visible: isFiltersVisible,
                        child: const CuisineTypeFilter(),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: AnimatedCrossFade(
                firstChild: MapView(
                  restaurants: restaurants,
                ),
                secondChild: RestaurantListView(
                  restaurants: restaurants,
                ),
                duration: const Duration(seconds: 1),
                crossFadeState: isMapView
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: white,
        onPressed: () {
          setState(() {
            isMapView = !isMapView;
          });
        },
        child: isMapView ? const Icon(Icons.list) : const Icon(Icons.map),
      ),
    );
  }
}
