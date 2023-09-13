import 'package:flutter/material.dart';
import 'package:testapp/ui/pages/details/details_screen.dart';
import 'package:testapp/ui/pages/home/home_screen.dart';
import 'package:testapp/ui/pages/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/details': (BuildContext context) => DetailsScreen(),
      },
      home: OnboardingScreen(),
    );
  }
}
