import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/layouts/app_layout.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({Key? key}) : super(key: key);

  @override
  _RecordingScreenState createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 28.0),
          Text(
            'Recording...',
            style: GoogleFonts.mPlusRounded1c(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.24,
              color: Color(0xFF132F51),
            ),
          ),
          SizedBox(height: 24.0),
          GestureDetector(
            onTap: () => {print('Recording...')},
            child: Center(
              child: Image(
                image: AssetImage('assets/icons/recording_icon.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
