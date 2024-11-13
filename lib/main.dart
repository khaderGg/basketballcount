import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pointteam1 = 0;
  int pointteam2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      "$pointteam1",
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(
                                fontFamily: 'Bebas Neue', fontSize: 22)),
                        onPressed: () {
                          setState(() {
                            pointteam1 += 1;
                          });
                        },
                        child: Text(" one point ")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(
                                fontFamily: 'Bebas Neue', fontSize: 22)),
                        onPressed: () {
                          setState(() {
                            pointteam1 += 2;
                          });
                        },
                        child: Text(" two point ")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(
                                fontFamily: 'Bebas Neue', fontSize: 22)),
                        onPressed: () {
                          pointteam1 += 3;
                          setState(() {

                          });
                        },
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
                      "$pointteam2",
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(
                                fontFamily: 'Bebas Neue', fontSize: 22)),
                        onPressed: () {
                          pointteam2 += 1;
                        setState(() {

                        });
                          },
                        child: Text(" one point ")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(
                                fontFamily: 'Bebas Neue', fontSize: 22)),
                        onPressed: () {
                          pointteam2 += 2;
                        setState(() {

                        });
                          },
                        child: Text(" two point ")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(6),
                            textStyle: TextStyle(
                                fontFamily: 'Bebas Neue', fontSize: 22)),
                        onPressed: () {
                          pointteam2 += 3;
                        setState(() {

                        });
                          },
                        child: Text("three point")),
                  ],
                ),
              ),
            ]),
            ElevatedButton(
              onPressed: () {

                pointteam1 = 0;
                pointteam2 = 0;
              setState(() {

              });
                },
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(6),
                  textStyle: TextStyle(fontFamily: 'Bebas Neue', fontSize: 22)),
            )
          ],
        ),
      ),
    );
  }
}
