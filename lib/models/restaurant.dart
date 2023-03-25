import 'package:latlong2/latlong.dart';

class Restaurant {
  final String name;
  final String description;
  final LatLng location;
  final double rating;
  final String address;
  final String imageUrl;
  final double priceRange;
  final String cuisineType;

  Restaurant(this.name, this.description, this.location, this.rating,
      this.address, this.imageUrl, this.priceRange, this.cuisineType);
}
