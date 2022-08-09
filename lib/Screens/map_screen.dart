import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled1/Colors/Colors.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.773972, -122.085749655962),
    zoom: 11.5,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.431297),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  void dispose() {

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kButtonBGColor,
        onPressed: _goToTheLake,
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

