import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Festival Qoutes",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "diwali",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                  child: const Column(
                    children: [
                      Text(
                        "Cheers to a new year and another chance for us to get it right",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        " - Oprah Winfrey",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: 400,
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
