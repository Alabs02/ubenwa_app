import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/constants/config_constants.dart';

class InputLabel extends StatelessWidget {
  const InputLabel({
    Key? key,
    required this.title,
    this.px = kDefaultPadding / 2,
  }) : super(key: key);

  final String title;
  final double px;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: px,
      ),
      child: Text(
        '$title',
        style: GoogleFonts.mPlusRounded1c(
          fontWeight: FontWeight.w500,
          fontSize: 13.0,
          letterSpacing: 0.5,
          color: kDarkBlueColor,
        ),
      ),
    );
  }
}
