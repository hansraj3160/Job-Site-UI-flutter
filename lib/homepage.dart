import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> selectionList = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        elevation: 1.00,
        backgroundColor: const Color.fromARGB(255, 234, 238, 239),
        actions: [
          TextButton(
            onPressed: (() => {}),
            child: const Text("Login"),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
      ), //
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            head(context),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ToggleButtons(
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < selectionList.length; i++) {
                          if (i == index) {
                            selectionList[i] = true;
                          } else {
                            selectionList[i] = false;
                          }
                        }
                      });
                    },
                    isSelected: selectionList,
                    children: [
                      Container(
                        width: 150,
                        child: const Text("Button 1"),
                      ),
                      Container(
                        width: 150,
                        child: Text("Button 2"),
                      ),
                      Container(
                        width: 150,
                        child: Text("Button 3"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bodypart(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        height: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 234, 238, 239),
            ),
            child: ElevatedButton(
              onPressed: () => {},
              child: const Text(' Elevated Button'),
            ),
          ),
        ),
      ),
    );
  }
}

head(BuildContext context) {
  return Stack(
    children: [
      Positioned(
        child: ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            color: const Color.fromARGB(255, 120, 236, 222),
            child: Center(
              child: Image.asset("assets/images/deal.png"),
            ),
          ),
        ),
      ),
    ],
  );
}

bodypart() {
  return Column(
    children: [
      Container(
        height: 100,
        child: Image.asset("assets/images/first.png"),
      ),
      Container(
        height: 100,
        child: Image.asset("assets/images/second.png"),
      ),
      Container(
        height: 100,
        child: Image.asset("assets/images/third.png"),
      ),
    ],
  );
}
