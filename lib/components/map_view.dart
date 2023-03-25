import 'package:findresteau/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:location/location.dart';

class MapView extends StatefulWidget {
  final List<Restaurant> restaurants;
  const MapView({super.key, required this.restaurants});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final MapController _mapController = MapController();
  Location location = Location();
  bool _serviceEnabled = false;
  PermissionStatus _permissionGranted = PermissionStatus.denied;
  LocationData? _locationData;

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
    _getLocation();
  }

  void _checkLocationPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _getLocation();
  }

  void _getLocation() async {
    try {
      _locationData = await location.getLocation();
      setState(() {});
    } catch (e) {
      print('Could not get the user\'s location: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        zoom: 14.0,
        center:  LatLng(_locationData!.latitude!, _locationData!.longitude!),
        interactiveFlags: InteractiveFlag.pinchZoom | InteractiveFlag.drag,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        MarkerLayerOptions(
          markers: widget.restaurants
              .map(
                (restaurant) => Marker(
              point: restaurant.location,
              builder: (context) => IconButton(
                onPressed: () {

                },
                icon: const Icon(Icons.restaurant,
                    color: Colors.green, size: 40.0),
              ),
            ),
          )
              .toList(),
        ),
        if (_locationData != null)
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80,
                height: 80,
                point: LatLng(
                    _locationData?.latitude ?? 33.986977,
                    _locationData?.longitude ?? -6.854890
                ),
                builder: (ctx) => Column(
                  children: const [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
      ],
    );

  }
}
