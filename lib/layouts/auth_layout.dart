import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:ubenwa/components/social_media_services.dart';
import 'package:ubenwa/components/text_icon_btn.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';

class AuthLayout extends StatefulWidget {
  const AuthLayout({
    Key? key,
    required this.child,
    this.height = 0.65,
    this.hasFooter = true,
    this.footerCopy = 'or signup with',
  }) : super(key: key);

  final Widget child;
  final double height;
  final bool hasFooter;
  final String footerCopy;

  @override
  _AuthLayoutState createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  String user = "clinical_user";

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
              ShowUpAnimation(
                delayStart: Duration(seconds: 1),
                animationDuration: Duration(seconds: 1),
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Container(
                  height: size.height * widget.height,
                  width: size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: (user == 'clinical_user')
                        ? kTwoPinkColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(32.0),
                    image: DecorationImage(
                      image: AssetImage(
                        (user == 'clinical_user')
                            ? 'assets/images/white_card.png'
                            : 'assets/images/pink_card.png',
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
                          child: widget.child,
                        ),
                      ),
                      Container(
                        width: size.width,
                        padding: EdgeInsets.only(
                          left: (user == 'clinical_user') ? 20.0 : 0.0,
                          right: (user == 'regular_user') ? 20.0 : 0.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextIconBtn(
                              icon:
                                  'assets/icons/${(user == 'clinical_user') ? 'stethoscope.png' : 'stethoscope_gray.png'}',
                              title: 'Clinical User',
                              textColor: (user == 'clinical_user')
                                  ? kDarkBlueColor
                                  : Color(0XFF88879C),
                              press: () {
                                setState(() {
                                  user = 'clinical_user';
                                });
                              },
                            ),
                            TextIconBtn(
                              icon:
                                  'assets/icons/${(user == 'regular_user') ? 'profile.png' : 'profile_gray.png'}',
                              title: 'Regular User',
                              textColor: (user == 'regular_user')
                                  ? kDarkBlueColor
                                  : Color(0XFF88879C),
                              press: () {
                                setState(() {
                                  user = 'regular_user';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.0),
              widget.hasFooter
                  ? Text(
                      '${widget.footerCopy}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.0,
                        letterSpacing: -0.24,
                        color: kBrandGrayColor,
                      ),
                    )
                  : SizedBox.shrink(),
              SizedBox(height: 12.0),
              widget.hasFooter
                  ? SocialMediaServices(size: size)
                  : SizedBox.shrink(),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
