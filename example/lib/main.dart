import 'package:flutter/material.dart';
import 'package:anim_indicator/anim_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Anim Indicator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Anim Indicator'),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              controller: _pageController,
              children: [
                makePage(color: Colors.amber),
                makePage(color: Colors.lightGreenAccent),
                makePage(color: Colors.lightBlueAccent),
              ],
              onPageChanged: (int page) {
                setState(() {
                  currentIndex = page;
                });
              },
            ),
            Positioned(
                bottom: 10,
                child: AnimIndicator(
                  dotsCount: 3,
                  position: currentIndex,
                  color: Colors.red,
                  inLength: 30,
                )),
          ],
        ),
      ),
    );
  }

  Widget makePage({color}) {
    return Container(
      color: color,
    );
  }
}
