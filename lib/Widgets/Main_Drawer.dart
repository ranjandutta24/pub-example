// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location_example/Utils/colors.dart';
import 'package:location_example/pub/particular.dart';
import 'package:location_example/pub/regexed_text.dart';
import 'package:location_example/pub/smart_text_flutter.dart';
import 'package:location_example/pub/typewrite_text.dart';

class MainDrawer extends ConsumerStatefulWidget {
  const MainDrawer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends ConsumerState<MainDrawer> {
  bool show = false;

  // Future<void> deleteAllUsersData() async {
  //   final dbPath = await sql.getDatabasesPath();
  //   final db = await sql.openDatabase(
  //     path.join(dbPath, 'local.db'),

  //     version: 1,
  //   );

  //   await db.delete('user_collections');

  //   await db.close();
  // }

  @override
  Widget build(BuildContext context) {
    // final dynamic myOrg = ref.watch(orgProvider);
    // final dynamic currentUserData = ref.watch(userProvider);
    // print(currentUserData);
    return Drawer(
      // width: 300,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const DrawerHeader(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 132, 84, 28),
                      Color.fromARGB(255, 117, 77, 28),
                      Color.fromARGB(255, 116, 79, 26),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "name",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "dgfdsg",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  // Icons.window_rounded,
                  size: 26,
                  color: myColors["icon"],
                ),
                title: const Text(
                  'Smart Text',
                ),
                onTap: () {
                  Navigator.replace(
                    context,
                    oldRoute: ModalRoute.of(context)!,
                    newRoute: MaterialPageRoute(
                        builder: (context) => const SmartTextFlutterExample()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  // Icons.window_rounded,
                  size: 26,
                  color: myColors["icon"],
                ),
                title: const Text(
                  'RegexedText',
                ),
                onTap: () {
                  Navigator.replace(
                    context,
                    oldRoute: ModalRoute.of(context)!,
                    newRoute: MaterialPageRoute(
                        builder: (context) => const RegexedTextScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  // Icons.window_rounded,
                  size: 26,
                  color: myColors["icon"],
                ),
                title: const Text(
                  'Typewrite',
                ),
                onTap: () {
                  Navigator.replace(
                    context,
                    oldRoute: ModalRoute.of(context)!,
                    newRoute: MaterialPageRoute(
                        builder: (context) => const TextPackageApp()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  // Icons.window_rounded,
                  size: 26,
                  color: myColors["icon"],
                ),
                title: const Text(
                  'Particular',
                ),
                onTap: () {
                  Navigator.replace(
                    context,
                    oldRoute: ModalRoute.of(context)!,
                    newRoute: MaterialPageRoute(
                        builder: (context) => const ParticularPub()),
                  );
                },
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Develop By Ranjan Dutta @2024',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
