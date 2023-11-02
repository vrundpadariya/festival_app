import 'package:festival/screen/detail.dart';
import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const homescreen(),
        'detail': (context) => const detailscreen(),
      },
    ),
  );
}
