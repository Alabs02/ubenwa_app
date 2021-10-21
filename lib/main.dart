import 'package:flutter/material.dart';
import 'package:ubenwa/screens/auth/login_auth_screen.dart';
import 'package:ubenwa/screens/auth/signup_auth_screen.dart';
import 'package:ubenwa/screens/auth/verify_account_auth_screen.dart';
import 'package:ubenwa/screens/auth/verify_otp_auth_screen.dart';
import 'package:ubenwa/screens/home_screen.dart';
import 'package:ubenwa/screens/onboarding_screen.dart';

void main() => runApp(UbenwaApp());

class UbenwaApp extends StatelessWidget {
  const UbenwaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubenwa App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/verify_otp',
      routes: {
        '/onboarding': (context) => OnBoardingScreen(),
        '/signup': (context) => SignUpAuthSreen(),
        '/login': (context) => LoginAuthScreen(),
        '/verify_account': (context) => VerifyAccountAuthScreen(),
        '/verify_otp': (context) => VerifyOtpAuthScreen(),
      },
    );
  }
}
