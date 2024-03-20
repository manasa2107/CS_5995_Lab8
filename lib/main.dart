// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(46.8188, -92.0843);
  final LatLng _favPlaceA = const LatLng(46.804949, -92.069092);
  final LatLng _favPlaceB = const LatLng(46.778817, -92.093156);
  final LatLng _favPlaceC = const LatLng(46.782776, -92.098509);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Manasa\'s Maps Sample App'),
          backgroundColor: Color.fromARGB(255, 198, 209, 40),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          markers: {
            Marker(
                markerId: MarkerId('Lovely Place A'),
                position: _favPlaceA,
                infoWindow: InfoWindow(title: 'McDonald\'s ')),
            Marker(
                markerId: MarkerId('Lovely Place B'),
                position: _favPlaceB,
                infoWindow: InfoWindow(title: 'Lake Superior')),
            Marker(
                markerId: MarkerId('Lovely Place C'),
                position: _favPlaceC,
                infoWindow: InfoWindow(title: 'Marcus Duluth Cinema')),
          },
        ),
      ),
    );
  }
}

// // Copyright 2013 The Flutter Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';
// // ignore: depend_on_referenced_packages
// import 'package:google_maps_flutter_example/lite_mode.dart';
// import 'animate_camera.dart';
// import 'map_click.dart';
// import 'map_coordinates.dart';
// import 'map_ui.dart';
// import 'marker_icons.dart';
// import 'move_camera.dart';
// import 'padding.dart';
// import 'page.dart';
// import 'place_circle.dart';
// import 'place_marker.dart';
// import 'place_polygon.dart';
// import 'place_polyline.dart';
// import 'scrolling_map.dart';
// import 'snapshot.dart';
// import 'tile_overlay.dart';

// final List<GoogleMapExampleAppPage> _allPages = <GoogleMapExampleAppPage>[
//   const MapUiPage(),
//   const MapCoordinatesPage(),
//   const MapClickPage(),
//   const AnimateCameraPage(),
//   const MoveCameraPage(),
//   const PlaceMarkerPage(),
//   const MarkerIconsPage(),
//   const ScrollingMapPage(),
//   const PlacePolylinePage(),
//   const PlacePolygonPage(),
//   const PlaceCirclePage(),
//   const PaddingPage(),
//   const SnapshotPage(),
//   const LiteModePage(),
//   const TileOverlayPage(),
// ];

// /// MapsDemo is the Main Application.
// class MapsDemo extends StatelessWidget {
//   /// Default Constructor
//   const MapsDemo({Key? key}) : super(key: key);

//   void _pushPage(BuildContext context, GoogleMapExampleAppPage page) {
//     Navigator.of(context).push(MaterialPageRoute<void>(
//         builder: (_) => Scaffold(
//               appBar: AppBar(title: Text(page.title)),
//               body: page,
//             )));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('GoogleMaps examples')),
//       body: ListView.builder(
//         itemCount: _allPages.length,
//         itemBuilder: (_, int index) => ListTile(
//           leading: _allPages[index].leading,
//           title: Text(_allPages[index].title),
//           onTap: () => _pushPage(context, _allPages[index]),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   if (defaultTargetPlatform == TargetPlatform.android) {
//     AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
//     //AndroidGoogleMapsFlutter.platform = AndroidFlutterViewSurface();
//   }
//   runApp(const MaterialApp(home: MapsDemo()));
// }
