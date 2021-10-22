import 'package:flutter/material.dart';
import 'package:ubenwa/layouts/app_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Column(
        children: <Widget>[
          SizedBox(height: 68.0),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/recording');
            },
            child: Center(
              child: Image(
                image: AssetImage('assets/icons/ubenwa_wave_btn.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
