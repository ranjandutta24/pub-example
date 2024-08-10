import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';
// import 'package:permission_handler/permission_handler.dart' as p;

import 'package:audioplayers/audioplayers.dart';
import 'package:location_example/Widgets/Main_Drawer.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  LocationData? _currentLocation;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    // _checkLocationStatus();
    _audioPlayer = AudioPlayer();
  }

  // Future<void> _checkLocationStatus() async {
  //   // Check if location services are enabled.
  //   _serviceEnabled = await location.serviceEnabled();
  //   if (!_serviceEnabled) {
  //     _serviceEnabled = await location.requestService();
  //     if (!_serviceEnabled) {
  //       // Location services are still not enabled. Handle accordingly.
  //       return;
  //     }
  //   }

  //   // Check and request location permissions.
  //   _permissionGranted = await location.hasPermission();
  //   if (_permissionGranted == PermissionStatus.denied) {
  //     _permissionGranted = await location.requestPermission();
  //     if (_permissionGranted != PermissionStatus.granted) {
  //       // Permission not granted. Handle accordingly.
  //       return;
  //     }
  //   }
  // }

  // Future<void> _getLocation() async {
  //   try {
  //     _currentLocation = await location.getLocation();
  //     setState(() {});
  //   } catch (e) {
  //     // Handle errors while getting location.
  //     print('Error: $e');
  //   }
  // }

  Future<void> _playAudio() async {
    await _audioPlayer.play(UrlSource('assets/sounds/success-1-6297.mp3'));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Example'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // if (_currentLocation != null)
            //   Text(
            //     'Latitude: ${_currentLocation!.latitude}\nLongitude: ${_currentLocation!.longitude}',
            //     style: TextStyle(fontSize: 16),
            //     textAlign: TextAlign.center,
            //   ),
            // SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: _getLocation,
            //   child: Text('Get Current Location'),
            // ),
            // ElevatedButton(
            //   onPressed: _playAudio,
            //   child: Text('Play Audio'),
            // ),

            Text(
              "Dsfds",
              // style: GoogleFonts.play(
              //   textStyle: const TextStyle(
              //     // color: myColors["icon"], // Change text color
              //     fontSize: 20, // Change font size
              //   ),
              // ),
            )
          ],
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}
