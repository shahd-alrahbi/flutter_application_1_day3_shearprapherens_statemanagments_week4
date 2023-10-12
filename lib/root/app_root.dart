import 'package:flutter/material.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/card_screen.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/home_screen.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
