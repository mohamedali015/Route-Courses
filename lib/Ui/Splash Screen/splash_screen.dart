import 'package:courses/Ui/Home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash Screen' ;
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false) ;
    },) ;
    return Scaffold(
      backgroundColor: const Color(0xFF002B6A),
      body: Center(
        child: Image.asset("assets/images/splash_screen.png"),
      ),
    );
  }
}
