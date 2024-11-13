import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text("Basketball",
            style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32)),
        centerTitle: true,
        leading: Icon(Icons.sports_basketball_rounded),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [Icon(Icons.sports_basketball_rounded)],
            ),
          )
        ],
        backgroundColor: Colors.white30,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "TEAM 1",
                    style: TextStyle(fontSize: 26),
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 100),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(6),
                          textStyle: TextStyle(
                              fontFamily: 'Bebas Neue', fontSize: 22)),
                      onPressed: () {},
                      child: Text(" one point ")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(6),
                          textStyle: TextStyle(
                              fontFamily: 'Bebas Neue', fontSize: 22)),
                      onPressed: () {},
                      child: Text(" two point ")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(6),
                          textStyle: TextStyle(
                              fontFamily: 'Bebas Neue', fontSize: 22)),
                      onPressed: () {},
                      child: Text("three point")),
                ],
              ),
            ),
            Container(
                height: 500,
                child: VerticalDivider(
                  thickness: 2,
                )),
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "TEAM 2",
                    style: TextStyle(fontSize: 26),
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 100),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(6),
                          textStyle: TextStyle(
                              fontFamily: 'Bebas Neue', fontSize: 22)),
                      onPressed: () {},
                      child: Text(" one point ")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(6),
                          textStyle: TextStyle(
                              fontFamily: 'Bebas Neue', fontSize: 22)),
                      onPressed: () {},
                      child: Text(" two point ")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.all(6),
                          textStyle: TextStyle(
                              fontFamily: 'Bebas Neue', fontSize: 22)),
                      onPressed: () {},
                      child: Text("three point")),
                ],
              ),
            ),
          ]),
          ElevatedButton(
            onPressed: () {},
            child: Text("Reset"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.all(6),
                textStyle: TextStyle(fontFamily: 'Bebas Neue', fontSize: 22)),
          )
        ],
      ),
    );
  }
}
