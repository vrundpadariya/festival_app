import 'package:festival/screen/detail.dart';
import 'package:festival/screen/homepage.dart';
import 'package:festival/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => splace(),
        'h': (context) => homescreen(),
        'detail': (context) => const detailscreen(),
      },
    ),
  );
}
