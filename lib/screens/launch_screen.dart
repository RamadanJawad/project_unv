import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/screens/home_screen.dart';

class LaunchScrren extends StatefulWidget {
  const LaunchScrren({Key? key}) : super(key: key);

  @override
  State<LaunchScrren> createState() => _LaunchScrrenState();
}

class _LaunchScrrenState extends State<LaunchScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: AnimatedSplashScreen(
          splash: Wrap(
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  Text(
                    "دليل الطالب",
                    style: GoogleFonts.tajawal(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                ],
              ),
            ],
          ),
          nextScreen: const HomeScreen(),
          duration: 4000,
          splashIconSize: 350,
        ),
      ),
    );
  }
}
