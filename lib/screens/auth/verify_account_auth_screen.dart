import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ubenwa/components/rounded_btn.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';
import 'package:ubenwa/layouts/auth_layout.dart';

class VerifyAccountAuthScreen extends StatefulWidget {
  const VerifyAccountAuthScreen({Key? key}) : super(key: key);

  @override
  _VerifyAccountAuthScreenState createState() =>
      _VerifyAccountAuthScreenState();
}

class _VerifyAccountAuthScreenState extends State<VerifyAccountAuthScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AuthLayout(
      hasFooter: false,
      height: 0.57,
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              'Verification',
              style: GoogleFonts.mPlusRounded1c(
                fontWeight: FontWeight.w700,
                fontSize: 22.0,
                letterSpacing: -0.24,
                color: kDarkBlueColor,
              ),
            ),
          ),
          SizedBox(height: 34.0),
          Text(
            'Enter your phone #',
            style: GoogleFonts.mPlusRounded1c(
              fontWeight: FontWeight.w500,
              fontSize: 13.0,
              letterSpacing: 0.6,
              color: kDarkBlueColor,
            ),
          ),
          SizedBox(height: 4.0),
          Container(
            width: size.width,
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: kTwoPinkColor,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 5.0),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                color: Color(0XFFe2edfc),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: kDarkBlueColor,
                  ),
                  BoxShadow(
                    color: Color(0XFFe2edfc),
                    spreadRadius: -12.0,
                    blurRadius: 12.0,
                  ),
                  BoxShadow(color: Color(0XFFe2edfc)),
                ],
              ),
              child: IntlPhoneField(
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.only(top: 7.5),
                    isCollapsed: true,
                    isDense: true,
                    counter: SizedBox.shrink(),
                  ),
                  countryCodeTextColor: kDarkBlueColor,
                  style: GoogleFonts.mPlusRounded1c(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.4,
                    color: kDarkBlueColor,
                  ),
                  showDropdownIcon: false,
                  initialCountryCode: 'NG',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  }),
            ),
          ),
          SizedBox(height: 24.08),
          Center(
            child: RoundedBtn(
              press: () {
                Navigator.pushNamed(context, '/verify_otp');
              },
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
    );
  }
}
