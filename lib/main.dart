import 'package:flutter/material.dart';
import 'package:myapp/Custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 0;
  var b = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            "BasketBall",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Team A", style: TextStyle(fontSize: 25)),
                    Text("$a", style: const TextStyle(fontSize: 150)),
                    Custom(
                      txt: "Add 1 Point",
                      onPressed: () => {
                        setState(() {
                          a += 1;
                        }),
                      },
                    ),

                    const SizedBox(height: 10),
                    Custom(
                      txt: "Add 2 Point",
                      onPressed: () => {
                        setState(() {
                          a += 2;
                        }),
                      },
                    ),
                    const SizedBox(height: 10),
                    Custom(
                      txt: "Add 3 Point",
                      onPressed: () => {
                        setState(() {
                          a += 3;
                        }),
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    width: 30,
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Team B", style: TextStyle(fontSize: 25)),
                    Text("$b", style: const TextStyle(fontSize: 150)),
                    Custom(
                      txt: "Add 1 Point",
                      onPressed: () => {
                        setState(() {
                          b += 1;
                        }),
                      },
                    ),
                    const SizedBox(height: 10),
                    Custom(
                      txt: "Add 2 Point",
                      onPressed: () => {
                        setState(() {
                          b += 2;
                        }),
                      },
                    ),
                    const SizedBox(height: 10),
                    Custom(
                      txt: "Add 3 Point",
                      onPressed: () => {
                        setState(() {
                          b += 3;
                        }),
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Custom(
              txt: "Reset",
              onPressed: () => {
                setState(() {
                  a = 0;
                  b = 0;
                }),
              },
            ),
          ],
        ),
      ),
    );
  }
}
