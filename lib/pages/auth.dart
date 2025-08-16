import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ihealthlink_mobile/themes/colors.dart';
import '/widgets/login-form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.mainBlue,
      body: Stack(
        children: <Widget>[
          // WIDGET FOR THE BRANDING SECTION
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: <Widget>[
                  Row(
                    // Center the Row's content horizontally
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // 1. The SVG on the left
                      SvgPicture.asset(
                        'assets/images/iHL-logo-w.svg', // <-- Your SVG file
                        height: 30,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 10), // Spacing between SVG and text
                      // 2. The Column for the two text widgets
                      const Column(
                        // Align texts to the left within the Column
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min, // Make column only as tall as its children
                        children: <Widget>[
                          // Branding Title
                          Text(
                            'iHealthLink',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // Message below the title
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 0),
                  Text(
                    'Mobile App for Barangay Health Workers',
                    style: TextStyle(
                      color: Colors.white, // Slightly transparent white
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // THE WHITE CONTAINER FOR THE BOTTOM 3/4
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              // Replace the placeholder Center widget with your LoginForm
              child: const LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}