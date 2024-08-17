import 'package:courses/Ui/Home/home_screen.dart';
import 'package:courses/Ui/Splash%20Screen/splash_screen.dart';
import 'package:courses/Ui/Theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route Courses',
      theme: AppTheme.lightTheme,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
