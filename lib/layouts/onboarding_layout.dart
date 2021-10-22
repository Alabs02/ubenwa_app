import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/components/outlined_btn.dart';
import 'package:ubenwa/components/rounded_btn.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';
import 'dart:ui';

class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout({
    Key? key,
    required this.size,
    required this.pages,
    required this.heading,
    required this.imgUrl,
    required this.boardingInfo,
    this.currentPage = 0,
  }) : super(key: key);

  final Size size;
  final int pages;
  final String heading;
  final String imgUrl;
  final int currentPage;
  final boardingInfo;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
      child: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding * 1.5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/onboarding_bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedBtn(
                  copy: 'Skip',
                  press: () async {
                    await boardingInfo();
                    Navigator.of(context).pushReplacementNamed('/signup');
                  },
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            Text(
              '$heading',
              textAlign: TextAlign.center,
              style: GoogleFonts.mPlusRounded1c(
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
                color: kDarkBlueColor,
                letterSpacing: -0.24,
              ),
            ),
            SizedBox(height: 11.0),
            Text(
              'By entering your details, you are agreeing to our Terms of Service and Privacy Policy. Thanks!',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w500,
                fontSize: 13.0,
                color: kDarkBlueColor,
                letterSpacing: -0.24,
              ),
            ),
            SizedBox(height: kDefaultPadding * 4),
            Container(
              height: size.height * 0.5,
              width: size.width,
              decoration: BoxDecoration(
                color: kGrayColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                alignment: Alignment.topCenter,
                transform: Matrix4.translationValues(0, -60.0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/$imgUrl',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      OutlinedBtn(
                        copy: 'Login',
                        press: () {
                          boardingInfo();
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(pages, (index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  right: (index == pages - 1)
                                      ? 0.0
                                      : kDefaultPadding / 5),
                              height: 10.0,
                              width: (index == currentPage) ? 20.0 : 10.0,
                              decoration: BoxDecoration(
                                  color: (index == currentPage)
                                      ? Color(0xFF88879C)
                                      : kBrandGrayColor,
                                  borderRadius: BorderRadius.circular(10.0)),
                            );
                          }),
                        ),
                      ),
                      (currentPage != (pages - 1))
                          ? OutlinedBtn(
                              copy: 'SignUp',
                              press: () async {
                                await boardingInfo();
                                Navigator.of(context)
                                    .pushReplacementNamed('/signup');
                              },
                            )
                          : RoundedBtn(
                              copy: 'SignUp',
                              press: () async {
                                await boardingInfo();
                                Navigator.of(context)
                                    .pushReplacementNamed('/signup');
                              },
                              colors: <Color>[
                                kBlueGrayColor,
                                kLightBlueColor,
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
