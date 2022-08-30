import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pro_unv/screens/all_specialties.dart';
import 'package:pro_unv/screens/home_screen.dart';
import 'package:pro_unv/screens/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AnimatedSplashScreen(
      //     splash: 'images/logo.png',
      //     nextScreen: HomeScreen(),
      //     splashIconSize: 300),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context) => LaunchScrren(),
        '/home_screen':(context) => HomeScreen(),
        '/all_specialties_screen':(context) => AllSpecialties(),
      },
    );
  }
}
