import 'package:appcademy_hackaton/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OnboardingScreen> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        finishCallback: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()));
        },
      ),
    );
  }

  final pages = [
    PageModel(
        color: const Color(0xFFFFFFFF),
        imageAssetPath: 'assets/images/faq.gif',
        title: 'Learn new things',
        body: 'AppCademy gives you different trivias to learn.',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFFffdca7),
        imageAssetPath: 'assets/images/idea.gif',
        title: 'Get Help',
        body: 'You can collab with others with your problems to solve it.',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFFFFFFFF),
        imageAssetPath: 'assets/images/appear.gif',
        title: 'Apir!',
        body: 'With AppCademy you can learn and collab with others.',
        doAnimateImage: true),
  ];
}
