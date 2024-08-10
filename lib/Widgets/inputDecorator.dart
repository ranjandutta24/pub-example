// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:location_example/Utils/colors.dart';

inputDecoratin(dd, label, value, context, {Color? color = Colors.white}) {
  return InputDecorator(
    decoration: InputDecoration(
      isDense: true,
      filled: true,
      label: Text(
        value == null ? "" : label,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      fillColor: color,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorTheme(context)["textborder"],
        ), // Change the enabled border color here
        borderRadius: BorderRadius.circular(9.0),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
    ),
    child: DropdownButtonHideUnderline(child: dd),
  );
}

inputDecoratinDate(dd, label, value, {Color? color = Colors.white}) {
  return InputDecorator(
    decoration: InputDecoration(
      isDense: true,
      filled: true,
      label: Text(
        value == null ? "" : label,
        style: TextStyle(
          color: myColors["labelTextColor"],
        ),
      ),
      fillColor: color,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromARGB(213, 144, 189, 241),
        ), // Change the enabled border color here
        borderRadius: BorderRadius.circular(9.0),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
    ),
    child: DropdownButtonHideUnderline(child: dd),
  );
}
