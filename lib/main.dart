import 'package:flutter/material.dart';
import 'package:ubenwa/constants/color_contants.dart';
import 'package:ubenwa/screens/auth/login_auth_screen.dart';
import 'package:ubenwa/screens/auth/signup_auth_screen.dart';
import 'package:ubenwa/screens/auth/verify_account_auth_screen.dart';
import 'package:ubenwa/screens/auth/verify_otp_auth_screen.dart';
import 'package:ubenwa/screens/home_screen.dart';
import 'package:ubenwa/screens/onboarding_screen.dart';
import 'package:ubenwa/screens/recording_screen.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kDarkBlueColor.withOpacity(0.5),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('OnBoardingScreen');
  runApp(UbenwaApp());
}

class UbenwaApp extends StatelessWidget {
  const UbenwaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubenwa App',
      home: isViewed != 0 ? OnBoardingScreen() : HomeScreen(),
      theme: ThemeData(
        accentColor: kTwoBlueColor,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/recording',
      routes: {
        '/signup': (context) => SignUpAuthSreen(),
        '/login': (context) => LoginAuthScreen(),
        '/verify_account': (context) => VerifyAccountAuthScreen(),
        '/verify_otp': (context) => VerifyOtpAuthScreen(),
        '/recording': (context) => RecordingScreen(),
      },
    );
  }
}
