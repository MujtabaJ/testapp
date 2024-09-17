import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/detail_screen/detail_screen.dart';
import 'package:testapp/ui/pages/home_screen/home_screen.dart';
import 'package:testapp/ui/pages/onboarding/onboarding_screen.dart';

import 'ui/pages/sign_up copy/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/', // Set the initial route
      // routes: {
      //   '/': (context) => const OnboardingScreen(), // Define the home route
      //   '/home': (context) => const HomeScreen(), // Define the home route
      //   '/detail': (context) => const DetailScreen(), // Define another route
      //   // Add more routes here
      // },
      debugShowCheckedModeBanner: false,
      // home: OnboardingScreen(),
      home: SignUpScreen(),
      // home: HomeScreen(),
      // home: DetailScreen(),
    );
  }
}
