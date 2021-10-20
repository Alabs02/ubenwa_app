import 'package:flutter/material.dart';

class SocialMediaServices extends StatelessWidget {
  const SocialMediaServices({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () => {print('Use Facebook')},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/facebook.png'),
                backgroundColor: Colors.transparent,
                radius: 12.0,
              ),
            ),
            InkWell(
              onTap: () => {print('Use Twitter')},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/twitter.png'),
                backgroundColor: Colors.transparent,
                radius: 12.0,
              ),
            ),
            InkWell(
              onTap: () => {print('Use LinkedIn')},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/linkedIn.png'),
                backgroundColor: Colors.transparent,
                radius: 12.0,
              ),
            ),
            InkWell(
              onTap: () => {print('Use Google')},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/google.png'),
                backgroundColor: Colors.transparent,
                radius: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
