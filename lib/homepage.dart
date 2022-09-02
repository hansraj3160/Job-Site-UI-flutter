import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        backgroundColor: Color.fromARGB(255, 234, 238, 239),
        actions: [
          TextButton(
            onPressed: (() => {}),
            child: Text("Login"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
      ), //
      body: Center(
        child: bodypart(context),
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
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 238, 239),
            ),
            child: ElevatedButton(
              onPressed: () => {},
              child: Text(' Elevated Button'),
            ),
          ),
        ),
      ),
    );
  }
}

Widget bodypart(BuildContext context) {
  return Stack(
    children: [
      ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          color: Color.fromARGB(255, 120, 236, 222),
          child: Center(
            child: Image.asset("assets/images/deal.png"),
          ),
        ),
      ),
      Container(
        child: Image.network(""),
      ),
      Container(
        child: Row(children: <Widget>[
          Expanded(
            child: ElevatedButton(
              onPressed: () => {},
              child: Text(' Elevated Button'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => {},
              child: Text(' Elevated Button'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => {},
              child: Text(' Elevated Button'),
            ),
          ),
        ]),
      )
    ],
  );
}
