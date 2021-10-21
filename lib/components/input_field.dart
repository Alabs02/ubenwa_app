import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.size,
    this.isObscure = false,
  }) : super(key: key);

  final Size size;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0),
      width: size.width,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(23.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: kTwoPinkColor,
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFe2edfc),
          borderRadius: BorderRadius.circular(13.0),
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
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 5,
              horizontal: 15.0,
            ),
            isCollapsed: true,
            isDense: true,
          ),
          style: GoogleFonts.mPlusRounded1c(
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            letterSpacing: !isObscure ? 0.32 : 1.5,
            color: kDarkBlueColor,
          ),
          obscureText: isObscure,
        ),
      ),
    );
  }
}
