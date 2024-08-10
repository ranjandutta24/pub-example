import 'package:flutter/material.dart';

const myColors = {
  // "primary": const Color.fromARGB(255, 7, 102, 255),
  "primary": Color.fromARGB(255, 102, 64, 23),

  "icon": Color.fromARGB(241, 156, 98, 28),
  "active": Color.fromARGB(255, 38, 197, 59),
  "theme": Color.fromARGB(255, 64, 159, 247),
  "deactive": Color.fromARGB(255, 251, 99, 71),
  "desabled": Color.fromARGB(104, 82, 82, 82),
  "white": Color.fromARGB(255, 255, 255, 255),
  // "mid": const Color.fromARGB(255, 255, 215, 0),
  // "last": const Color.fromARGB(255, 135, 206, 250),
  "labelTextColor": Color.fromARGB(255, 100, 100, 100),
  "fillColor": Color.fromARGB(255, 240, 231, 213),
  "scaffoldBackgroundColor": Color.fromARGB(255, 240, 231, 213),
  "textborder": Color.fromARGB(212, 241, 194, 144),
  "focusborder": Color.fromARGB(211, 199, 154, 106),
  "card": Color.fromARGB(211, 255, 231, 206),
  "card_open": Color.fromARGB(255, 209, 184, 162),
  "card_open_border": Color.fromARGB(255, 212, 189, 168),
};
const myColorsDark = {
  "primary": Color.fromARGB(255, 95, 55, 9),
  "icon": Color.fromARGB(241, 156, 98, 28),
  "active": Color.fromARGB(255, 38, 197, 59),
  "theme": Color.fromARGB(255, 64, 159, 247),
  "deactive": Color.fromARGB(255, 251, 99, 71),
  "desabled": Color.fromARGB(104, 82, 82, 82),
  "white": Color.fromARGB(255, 255, 255, 255),
  // "mid": const Color.fromARGB(255, 255, 215, 0),
  // "last": const Color.fromARGB(255, 135, 206, 250),
  "labelTextColor": Color.fromARGB(255, 100, 100, 100),
  "fillColor": Color.fromARGB(255, 0, 0, 0),
  "scaffoldBackgroundColor": Color.fromARGB(255, 37, 37, 37),
  "textborder": Color.fromARGB(255, 81, 47, 21),
  "focusborder": Color.fromARGB(212, 241, 194, 144),
  "card": Color.fromARGB(184, 220, 182, 130),
  "card_open": Color.fromARGB(255, 32, 22, 13),
  "card_open_border": Color.fromARGB(255, 125, 77, 40),
};

colorTheme(context) {
  ThemeMode currentThemeMode = Theme.of(context).brightness == Brightness.dark
      ? ThemeMode.dark
      : ThemeMode.light;
  if (currentThemeMode == ThemeMode.dark) {
    return myColorsDark;
  } else if (currentThemeMode == ThemeMode.light) {
    return myColors;
  }
}

// import 'package:flutter/material.dart';

// class TabScreen extends StatefulWidget {
//   const TabScreen({super.key});
//   @override
//   State<TabScreen> createState() {
//     return _TabsScreenState();
//   }
// }

// class _TabsScreenState extends State<TabScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('sdad'),
//       ),
//     );
//   }
// }
