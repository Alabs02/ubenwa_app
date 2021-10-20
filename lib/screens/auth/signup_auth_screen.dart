import 'package:flutter/material.dart';
import 'package:ubenwa/layouts/auth_layout.dart';

class SignUpAuthSreen extends StatefulWidget {
  const SignUpAuthSreen({Key? key}) : super(key: key);

  @override
  _SignUpAuthSreenState createState() => _SignUpAuthSreenState();
}

class _SignUpAuthSreenState extends State<SignUpAuthSreen> {
  @override
  Widget build(BuildContext context) {
    return AuthLayout();
  }
}
