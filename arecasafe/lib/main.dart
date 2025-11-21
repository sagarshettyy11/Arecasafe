// main.dart

import 'package:arecasafe/screens/login_page.dart';
import 'package:arecasafe/screens/secure_account.dart';
import 'package:arecasafe/screens/signup_page.dart';
import 'package:arecasafe/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart'; // Import the defined constants

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 1. Set the Title
      title: 'Authentication Flow Demo',

      // 2. Set the Theme (Using the defined primary color)
      theme: ThemeData(
        // Use the defined yellow color as the seed for the color scheme
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryYellow,
          primary: kPrimaryYellow,
        ),
        useMaterial3: true,
        // Set default font (optional)
        // fontFamily: 'Roboto',
      ),

      // 3. Define the Initial Route
      initialRoute: '/',

      // 4. Define the Named Routes
      routes: {
        // The root route goes to the Welcome Screen
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/secure_account': (context) => const SecureAccountPage(),
      },

      // Optional: Remove the debug banner for a clean look
      debugShowCheckedModeBanner: false,
    );
  }
}
