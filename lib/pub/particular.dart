import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location_example/Widgets/Main_Drawer.dart';
import 'package:particular/particular.dart';

class ParticularPub extends StatefulWidget {
  const ParticularPub({super.key});

  @override
  State<ParticularPub> createState() => _ParticularPubState();
}

class _ParticularPubState extends State<ParticularPub> {
  // Add controller to change particle
  final _particleController = ParticularController();

  @override
  void initState() {
    _loadParticleAssets();
    super.initState();
  }

  // Load configs and texture of particle
  Future<void> _loadParticleAssets() async {
    // Load particle configs file
    String json = await rootBundle.loadString("assets/particle.json");
    final configsData = jsonDecode(json);

    // add particle layer
    _particleController.addLayer(
      configsData: configsData, // Remove in programmatic configuration case
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Particular(
        controller: _particleController,
      ),
      drawer: const MainDrawer(),
    );
  }
}
