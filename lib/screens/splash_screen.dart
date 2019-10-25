import 'package:appcademy_hackaton/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashLogoScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashLogoScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new OnboardingScreen(),
        title: new Text(
          'AppCademy',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        image: new Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red);
  }
}
