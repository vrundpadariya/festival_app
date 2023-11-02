import 'package:flutter/material.dart';

import '../utiles/qoutes.dart';

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
                        Navigator.pushNamed(context, "p", arguments: e);
                      },
                      child: Container(
                        height: 150,
                        width: 300,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "${e['img']}",
                            ),
                          ),
                        ),
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
                        Navigator.pushNamed(context, "p", arguments: e);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 300,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "${e['img']}",
                            ),
                          ),
                        ),
                        // child: Text(
                        //   "${e["categoryName"]}",
                        //   style: const TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 20,
                        //   ),
                        // ),
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
                        Navigator.pushNamed(context, "p", arguments: e);
                      },
                      child: Container(
                        height: 150,
                        width: 300,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "${e['img']}",
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
