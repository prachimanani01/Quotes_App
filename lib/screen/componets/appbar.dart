import 'dart:developer';

import 'package:flutter/material.dart';

AppBar appBar({
  String title = "Quotes",
  required bool toggle,
  required void Function() toggleCase,
}) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        onPressed: () {
          toggleCase();
        },
        icon: (toggle) ? const Icon(Icons.grid_on) : const Icon(Icons.list),
      ),
    ],
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
  );
}
