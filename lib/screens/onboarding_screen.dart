import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ubenwa/layouts/onboarding_layout.dart';
import 'package:ubenwa/models/onboarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          itemCount: introductions.length,
          itemBuilder: (context, position) {
            return OnBoardingLayout(
              size: size,
              heading: introductions[position]?.heading,
              imgUrl: introductions[position]?.imgUrl,
            );
          },
        ),
      ),
    );
  }
}

// OnBoardingLayout(size: size)
