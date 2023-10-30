import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapDemo extends StatefulWidget {
  const MapDemo({Key? key}) : super(key: key);

  @override
  State<MapDemo> createState() => _MapDemoState();
}

class _MapDemoState extends State<MapDemo> {

  LatLng _currLoc = LatLng(28.620486, 77.170761);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Demo'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _currLoc),
      )
    );
  }
}
