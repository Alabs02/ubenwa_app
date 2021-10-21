import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/components/rounded_btn.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';
import 'package:ubenwa/layouts/auth_layout.dart';

class VerifyOtpAuthScreen extends StatefulWidget {
  const VerifyOtpAuthScreen({Key? key}) : super(key: key);

  @override
  _VerifyOtpAuthScreenState createState() => _VerifyOtpAuthScreenState();
}

class _VerifyOtpAuthScreenState extends State<VerifyOtpAuthScreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return AuthLayout(
      height: 0.57,
      hasFooter: false,
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
          SizedBox(height: 38.0),
          Text(
            'Enter the 4 digit code sent via\n SMS to this number',
            textAlign: TextAlign.center,
            style: GoogleFonts.mPlusRounded1c(
              fontWeight: FontWeight.w500,
              fontSize: 13.0,
              letterSpacing: 0.4,
              color: kDarkBlueColor,
            ),
          ),
          SizedBox(height: 18.0),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return OTPTextField();
                }),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Center(
            child: RoundedBtn(
              press: () {
                Navigator.pushNamed(context, '/');
              },
              copy: 'Continue',
              colors: <Color>[
                kBlueGrayColor,
                kLightBlueColor,
              ],
              px: kDefaultPadding * 3.5,
              py: 10.0,
              radius: 34.0,
            ),
          ),
        ],
      ),
    );
  }
}

class OTPTextField extends StatelessWidget {
  const OTPTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.0,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: kTwoPinkColor,
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: Color(0XFFe2edfc),
          borderRadius: BorderRadius.circular(5.0),
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
        child: TextField(
          cursorColor: kDarkBlueColor,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ],
          maxLength: 1,
          decoration: InputDecoration(
            counterText: "",
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            isCollapsed: true,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 4.0,
              vertical: 0.0,
            ),
          ),
          style: GoogleFonts.mPlusRounded1c(
            fontSize: 13.0,
            fontWeight: FontWeight.w700,
            color: kDarkBlueColor,
          ),
        ),
      ),
    );
  }
}
