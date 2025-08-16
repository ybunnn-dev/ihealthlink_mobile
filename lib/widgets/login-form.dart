import 'package:flutter/material.dart';
import 'package:ihealthlink_mobile/themes/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // 3. Create controllers to manage the text fields
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  // 4. Dispose of the controllers when the widget is removed
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            'Welcome Back! Please sign in to continue.',
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
          const SizedBox(height: 24),

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
          const SizedBox(height: 4),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Wrap the inner Row with Transform.translate
             // ... inside your Row ...
              Transform.translate(
                offset: const Offset(-12, 0),
                child: Row(
                  children: [
                    // Wrap the Checkbox with Transform.scale
                    Transform.scale(
                      scale: 0.8, // <-- Adjust this value to change the size
                      child: Checkbox(
                        value: _rememberMe,
                        onChanged: (bool? value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                    ),
                   Transform.translate(
                      offset: const Offset(-8, 0), // <-- Negative 'dx' pulls it left
                      child: const Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.normalFont,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Forgot Password Button
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.mainBlue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainBlue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // <-- Adjust this value
              ),
            ),
            child: const Text(
              'LOG IN',
              // ADD THIS STYLE PROPERTY
              style: TextStyle(
                fontSize: 20, // <-- Adjust the font size here
                fontWeight: FontWeight.w600, // You can also add font weight
              ),
            ),
          ),
        ],
      ),
    );
  }
}