import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  final CameraPosition kmitl =
      CameraPosition(target: LatLng(13.7265887, 100.774959), zoom: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: GoogleMap(
        initialCameraPosition: kmitl,
        mapType: MapType.normal,
      ),
    );
  }
}
