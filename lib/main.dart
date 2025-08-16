import 'package:flutter/material.dart';
import 'themes/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pages/auth.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainBlue),
      ),
      home: const AuthPage(),
    );
  }
}

