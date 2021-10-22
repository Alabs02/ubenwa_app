import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubenwa/constants/color_contants.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboarding_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 46.0),
              Center(
                child: Image(
                  image: AssetImage('assets/icons/dark_logo.png'),
                ),
              ),
              SizedBox(height: 15.71),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 17.0,
                            height: 7.0,
                            margin: EdgeInsets.only(right: 5.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0XFF329789),
                                  Color(0XFF42BD95),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          Text(
                            'online',
                            style: GoogleFonts.mPlusRounded1c(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.2,
                              color: Color(0XFF88879C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'New profile',
                        style: GoogleFonts.mPlusRounded1c(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.4,
                          color: Color(0xFF132F51),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text('ID ----------',
                          style: GoogleFonts.mPlusRounded1c(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF88879C),
                          )),
                    ],
                  ),
                  Container(
                    // padding: EdgeInsets.all(20.0),
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      color: kTwoPinkColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: kTwoPinkColor,
                          blurRadius: 5.0,
                        )
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/icons/outlined_profile.png'),
                    ),
                  ),
                ],
              ),

              // Other components
              child,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.11,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        decoration: BoxDecoration(
          color: kTwoPinkColor,
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => {print('Screening')},
              child: Container(
                height: 50.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 22.0,
                      width: 22.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/screening.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Screenings',
                      style: GoogleFonts.notoSans(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                        color: kBrandGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => {print('Add')},
              child: Container(
                height: 61.0,
                width: 61.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                        Color(0xFFED4D5B),
                        Color(0xFFF9923B),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(19.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: kDarkBlueColor.withOpacity(0.6),
                        blurRadius: 4.0,
                        offset: Offset(0.0, 3.0),
                      ),
                    ]),
                child: Image(
                  image: AssetImage('assets/icons/add.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {print('patient')},
              child: Container(
                height: 50.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 24.0,
                      width: 24.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/person_solid.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Patient',
                      style: GoogleFonts.notoSans(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                        color: kBrandGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
