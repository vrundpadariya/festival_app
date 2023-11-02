import 'package:flutter/material.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Qoutes"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "${data['categoryName']}",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            ...data['categoryqoutes'].map((e) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detail', arguments: e);
                },
                child: Container(
                  height: 150,
                  width: 400,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "${e['img']}",
                      ),
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "${e["qoutes"]}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " - ${e["author"]}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
