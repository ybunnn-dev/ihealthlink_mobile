import 'package:flutter/material.dart';
import 'package:ihealthlink_mobile/themes/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        // Change from .center to .start to align content at the top
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Add some top padding so it's not stuck to the very top edge
          const SizedBox(height: 32),
          const Text(
            'SIGN IN',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: AppColors.mainFont,
            ),
          ),
          const SizedBox(height: 0), // Spacing for the subtitle

          // ADDED SUBTITLE
          const Text(
            'Please enter your credentials to log in.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.normalFont,
            ),
          ),
          const SizedBox(height: 72),
          Text(
            'Please enter your email',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.normalFont,
              fontSize: 12,
              ),
          ),
          const SizedBox(height:4),

          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 32),

          Text(
            'Please enter your password',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.normalFont,
              fontSize: 12,
              ),
          ),

          const SizedBox(height:4),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainBlue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // <-- Adjust this value
              ),
            ),
            child: const Text('LOG IN'),
          ),
        ],
      ),
    );
  }
}