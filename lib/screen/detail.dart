import 'package:festival/utiles/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Qoutes",
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share_outlined),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.copy_rounded,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 300,
              width: 350,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: global.bgColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    global.bgImage,
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "${data['qoute']}",
                    style: GoogleFonts.getFont(
                      global.fontFamily,
                    ).copyWith(
                      fontSize: 18,
                      color: global.fontColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    " - ${data['author']}",
                    style: GoogleFonts.getFont(
                      global.fontFamily,
                    ).copyWith(
                      fontSize: 18,
                      color: global.fontColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Text(
                    "Background color",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: global.bgcolor
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    global.bgColor = e;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(15),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: e,
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  const Text(
                    "Font color",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: global.bgcolor
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  global.fontColor = e;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(15),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: e,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const Text(
                    "Font style",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: global.font
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  global.fontFamily = e;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(15),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                child: Text(
                                  "A a",
                                  style: GoogleFonts.getFont(e).copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const Text(
                    "Background image ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: global.image
                          .map(
                            (e) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  global.bgImage = e;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(15),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "${e}",
                                        ))),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
