import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextIconBtn extends StatelessWidget {
  const TextIconBtn({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
    this.textColor = Colors.black87,
    this.textSize = 15.0,
  }) : super(key: key);

  final String title;
  final String icon;
  final Color textColor;
  final double textSize;
  final press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                '$icon',
              ),
              backgroundColor: Colors.transparent,
              radius: 12.0,
            ),
            Text(
              '$title',
              style: GoogleFonts.mPlusRounded1c(
                fontSize: textSize,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.24,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
