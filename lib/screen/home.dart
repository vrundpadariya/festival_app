import 'package:flutter/material.dart';
import '../components/qoutes.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Festival Post",
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              width: 30,
            ),
            const Text(
              "Upcoming festival",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Globals.upcoming
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "detail", arguments: e);
                        },
                        child: Container(
                          height: 150,
                          width: 300,
                          margin: const EdgeInsets.all(15),
                          color: Colors.red,
                          child: Text("${e["categoryName"]}"),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const Text(
              "Festival templets",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Globals.allqoutes
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "detail", arguments: e);
                        },
                        child: Container(
                          height: 150,
                          width: 300,
                          margin: const EdgeInsets.all(15),
                          color: Colors.red,
                          child: Text("${e["categoryName"]}"),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const Text(
              "Top picker",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Globals.topicker
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "detail", arguments: e);
                        },
                        child: Container(
                          height: 150,
                          width: 300,
                          margin: const EdgeInsets.all(15),
                          color: Colors.red,
                          child: Text("${e["categoryName"]}"),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
