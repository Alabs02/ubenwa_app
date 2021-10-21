import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/constants/color_contants.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn({
    Key? key,
    required this.copy,
    required this.press,
    required this.colors,
    this.py = 8.0,
    this.px = 20.0,
    this.textSize = 15.0,
    this.textColor = Colors.white,
    this.weight = FontWeight.w700,
    this.radius = 20.0,
  }) : super(key: key);

  final String copy;
  final double py;
  final double px;
  final List<Color> colors;
  final Color textColor;
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
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: colors,
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: kDarkBlueColor.withOpacity(0.3),
              blurRadius: 1.5,
              offset: Offset(0, 0.5),
            ),
          ],
        ),
        child: Text(
          '$copy',
          style: GoogleFonts.ptSans(
            fontWeight: weight,
            fontSize: textSize,
            fontStyle: FontStyle.normal,
            letterSpacing: -0.24,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
