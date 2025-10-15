import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatelessWidget {
   GoogleMapDemo({super.key});

   final Completer<GoogleMapController> _controller =
       Completer<GoogleMapController>();

   Set<Marker> markerSet = {
     Marker(markerId: MarkerId('1'),
       position: LatLng(33.5848, 73.0658),
       infoWindow: InfoWindow(title: "Rawalpindi"),
     ),
     Marker(markerId: MarkerId('2'),
       position: LatLng(33.5848, 73.0658),
       infoWindow: InfoWindow(title: "Lahore"),
     ),
     Marker(markerId: MarkerId('3'),
       position: LatLng(24.8607, 67.0011),
       infoWindow: InfoWindow(title: "Karachi"),
     ),
   };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: markerSet,
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        initialCameraPosition: CameraPosition(
            target: LatLng(33.6996, 73.0362),
        zoom: 14),
      onMapCreated: (GoogleMapController controller){
        _controller.complete(controller);
      },
      ),
    );
  }
}
