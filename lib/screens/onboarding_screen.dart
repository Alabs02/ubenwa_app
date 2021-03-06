import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubenwa/layouts/onboarding_layout.dart';
import 'package:ubenwa/models/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentPage = 0;

  _storeOnboardInfo() async {
    print('Shared pref called');
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('OnBoardingScreen', isViewed);
    print(prefs.getInt('OnBoardingScreen'));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },
          controller: _controller,
          itemCount: introductions.length,
          itemBuilder: (context, position) {
            return OnBoardingLayout(
              size: size,
              heading: introductions[position]?.heading,
              imgUrl: introductions[position]?.imgUrl,
              currentPage: currentPage,
              pages: introductions.length,
              boardingInfo: _storeOnboardInfo,
            );
          },
        ),
      ),
    );
  }
}

// OnBoardingLayout(size: size)
