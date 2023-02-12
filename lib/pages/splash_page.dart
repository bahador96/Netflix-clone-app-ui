import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/pages/root_app.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 250,
          color: Colors.red,
        ),
      ),
      nextScreen: const RootApp(),
      splashTransition: SplashTransition.scaleTransition,
      curve: Curves.linear,
      duration: 2500,
    );
  }
}
