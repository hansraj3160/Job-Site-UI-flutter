import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List text = [
  "Design and Build sophisticated and highly \nscalable apps using Flutter.",
  "You will receive a status update in an email \nwithin a few weeks of submitting your application.",
  "This is text one"
];
List text2 = [
  "within a few weeks of submitting your application",
  " you can view and track all your applications in the Indeed My jobs section at any time.",
  "You will receive a status update in an email"
];
List text3 = [
  "you can view and track all your applications ",
  "applications in the Indeed My jobs section at any time.",
  "weeks of submitting your application"
];

class _MyHomePageState extends State<MyHomePage> {
  int _c = 0;
  List<bool> selectionList = [true, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
              Container(
                child: screenSize.width < 992
                    ? headmobile(context)
                    : headdesktop(context),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleButtons(
                        selectedBorderColor: Color.fromARGB(255, 23, 93, 128),
                        onPressed: (int index) {
                          setState(() {
                            for (int i = 0; i < selectionList.length; i++) {
                              if (i == index) {
                                selectionList[i] = true;
                                _c = i;
                                index = i;
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
              ),
              Container(
                  child: screenSize.width < 992
                      ? bodypartmobile(context, _c)
                      : bodypartdesktop(context, _c)),
            ],
          ),
        ),
        bottomNavigationBar: screenSize.width < 992
            ? Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
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
                      child: Text("Registration Button"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 23, 93, 128),
                      ),
                    ),
                  ),
                ),
              )
            : null);
  }
}

headmobile(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  return ClipPath(
    clipper: WaveClipperTwo(),
    child: Container(
      color: Color.fromARGB(255, 207, 244, 240),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Design Job \nWebsite",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Container(
            height: screenSize.height * 0.40,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/deal.png",
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

headdesktop(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  return ClipPath(
    clipper: WaveClipperTwo(),
    child: Stack(
      children: [
        Positioned(
          child: Container(
            color: Color.fromARGB(255, 207, 244, 240),
            child: Container(
              height: screenSize.height * 0.50,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/deal.png",
                  ),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 50,
          left: 70,
          child: Text(
            "Design Job \nWebsite",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
        ),
        Positioned(
          top: 135,
          left: 80,
          child: ElevatedButton(
            onPressed: () => {},
            child: Text("Registration Button"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 23, 93, 128),
            ),
          ),
        )
      ],
    ),
  );
}

bodypartmobile(BuildContext context, int index) {
  var screenSize = MediaQuery.of(context).size;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Welcome to our site. \nFind your Dream Job Here",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Container(
          height: screenSize.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/first.png",
                  height: screenSize.height * 0.50,
                  width: screenSize.width,
                  alignment: Alignment.center,
                ),
                Positioned(
                  top: 200,
                  width: screenSize.width * 40,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/one.png",
                        height: screenSize.height * 0.40,
                        width: screenSize.width * 0.30,
                      ),
                      Flexible(
                        child: Text(
                          text[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: screenSize.height * 0.55,
            color: Color.fromARGB(255, 207, 244, 240),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/two.png",
                        height: screenSize.height * 0.40,
                        width: screenSize.width * 0.30,
                      ),
                      Flexible(
                        child: Text(
                          text2[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 130,
                  child: Image.asset(
                    "assets/images/second.png",
                    height: screenSize.height * 0.40,
                    width: screenSize.width,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: screenSize.width * 40,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/three.png",
                    height: screenSize.height * 0.50,
                    width: screenSize.width * 0.30,
                  ),
                  Flexible(
                    child: Text(
                      text3[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 140,
              child: Image.asset(
                "assets/images/third.png",
                height: screenSize.height * 0.4,
                width: screenSize.width,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

bodypartdesktop(BuildContext context, int index) {
  var screenSize = MediaQuery.of(context).size;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Welcome to our \nSite for Job",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 200),
              child: Image.asset(
                "assets/images/one.png",
                height: screenSize.height * 0.40,
              ),
            ),
            Text(
              text[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/first.png",
              height: screenSize.height * 0.50,
            ),
          ],
        ),
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: screenSize.height * 0.30,
            color: Color.fromARGB(255, 207, 244, 240),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 250),
                  child: Image.asset(
                    "assets/images/second.png",
                    height: screenSize.height * 0.50,
                  ),
                ),
                Image.asset(
                  "assets/images/two.png",
                  height: screenSize.height * 0.30,
                  alignment: Alignment.centerRight,
                ),
                Flexible(
                  child: Text(
                    text2[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/three.png",
              height: screenSize.height * 0.30,
            ),
            Flexible(
              child: Text(
                text3[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              "assets/images/third.png",
              height: screenSize.height * 0.4,
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ],
    ),
  );
}
