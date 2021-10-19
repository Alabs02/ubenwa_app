import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/constants/color_contants.dart';

class OutlinedBtn extends StatelessWidget {
  OutlinedBtn({
    Key? key,
    required this.copy,
    required this.press,
    this.py = 6.0,
    this.px = 27.0,
    this.color = kOutlinedBtnColor,
    this.textSize = 15.0,
    this.weight = FontWeight.w700,
    this.radius = 20.0,
  }) : super(key: key);

  final String copy;
  final double py;
  final double px;
  final Color color;
  final double textSize;
  final FontWeight weight;
  final double radius;
  final press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: py,
          horizontal: px,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: color,
            ),
            borderRadius: BorderRadius.circular(radius)),
        child: Text(
          '$copy',
          textAlign: TextAlign.center,
          style: GoogleFonts.ptSans(
            fontWeight: weight,
            fontSize: textSize,
            fontStyle: FontStyle.normal,
            letterSpacing: -0.24,
            color: color,
          ),
        ),
      ),
    );
  }
}
