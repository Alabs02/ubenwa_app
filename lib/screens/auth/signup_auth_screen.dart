import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/components/input_field.dart';
import 'package:ubenwa/components/input_label.dart';
import 'package:ubenwa/components/rounded_btn.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';
import 'package:ubenwa/layouts/auth_layout.dart';

class SignUpAuthSreen extends StatefulWidget {
  const SignUpAuthSreen({Key? key}) : super(key: key);

  @override
  _SignUpAuthSreenState createState() => _SignUpAuthSreenState();
}

class _SignUpAuthSreenState extends State<SignUpAuthSreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AuthLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
          InputField(size: size, isObscure: true),
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
              press: () {
                Navigator.pushNamed(context, '/verify_account');
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
