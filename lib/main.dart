import 'package:flutter/material.dart';
// import 'package:ubenwa/screens/home_screen.dart';
import 'package:ubenwa/screens/onboarding_screen.dart';

void main() => runApp(UbenwaApp());

class UbenwaApp extends StatelessWidget {
  const UbenwaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubenwa App',
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
