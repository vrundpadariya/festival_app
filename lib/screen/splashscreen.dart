import 'dart:async';

import 'package:flutter/material.dart';

class splace extends StatefulWidget {
  const splace({super.key});

  @override
  State<splace> createState() => _splaceState();
}

class _splaceState extends State<splace> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'h');
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
