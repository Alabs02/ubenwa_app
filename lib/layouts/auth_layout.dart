import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/components/input_field.dart';
import 'package:ubenwa/components/input_label.dart';
import 'package:ubenwa/components/social_media_services.dart';
import 'package:ubenwa/components/text_icon_btn.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';
import 'package:ubenwa/layouts/onboarding_layout.dart';

class AuthLayout extends StatefulWidget {
  const AuthLayout({Key? key}) : super(key: key);

  @override
  _AuthLayoutState createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/onboarding_bg.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            children: <Widget>[
              SizedBox(height: kDefaultPadding * 2),
              Container(
                height: size.height * 0.2,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              Container(
                height: size.height * 0.65,
                width: size.width,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                  horizontal: kDefaultPadding,
                ),
                decoration: BoxDecoration(
                  color: kTwoPinkColor,
                  borderRadius: BorderRadius.circular(32.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/white_card.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0XFFFBF5FF),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: kDarkBlueColor.withOpacity(0.3),
                      blurRadius: 4.0,
                      offset: Offset(0, 2.0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: size.width,
                        decoration: BoxDecoration(
                            // border: Border.all(
                            //   width: 2.0,
                            //   color: Colors.red,
                            // ),
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'SignUp',
                                style: GoogleFonts.mPlusRounded1c(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22.0,
                                  letterSpacing: -0.24,
                                  color: kDarkBlueColor,
                                ),
                              ),
                            ),
                            SizedBox(height: kDefaultPadding),

                            // Input Fields
                            InputLabel(title: 'Username'),
                            InputField(size: size),
                            SizedBox(height: 7.0),

                            InputLabel(title: 'Email'),
                            InputField(size: size),
                            SizedBox(height: 7.0),

                            InputLabel(title: 'Password'),
                            InputField(size: size),
                            SizedBox(height: 7.0),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding / 2,
                              ),
                              child: Text(
                                'By entering your details, you are agreeing to our Terms of Service and Privacy Policy. Thanks!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.0,
                                  letterSpacing: -0.24,
                                  color: kDarkBlueColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 7.0),

                            Center(
                              child: RoundedBtn(
                                press: () => {print('continue')},
                                copy: 'Continue',
                                colors: <Color>[
                                  kBlueGrayColor,
                                  kLightBlueColor,
                                ],
                                px: kDefaultPadding * 4,
                                py: 10.0,
                                radius: 34.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextIconBtn(
                            icon: 'assets/icons/stethoscope.png',
                            title: 'Clinical User',
                            textColor: kDarkBlueColor,
                            press: () => {print('Clinical User')},
                          ),
                          TextIconBtn(
                            icon: 'assets/icons/profile_gray.png',
                            title: 'Regular User',
                            textColor: Color(0XFF88879C),
                            press: () => {print('Regular User')},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.0),
              Text(
                'or signup with',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 11.0,
                  letterSpacing: -0.24,
                  color: kBrandGrayColor,
                ),
              ),
              SizedBox(height: 12.0),
              SocialMediaServices(size: size),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
