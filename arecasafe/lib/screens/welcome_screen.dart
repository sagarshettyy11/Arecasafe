// welcome_screen.dart

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import '../constants.dart'; // Assuming you put the constants in constants.dart

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy navigation functions (replace with actual Navigator calls)
    void navigateToLogin() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }

    void navigateToSignup() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupPage()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          // Yellow Header Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 100.0, bottom: 80.0),
            decoration: const BoxDecoration(
              color: kPrimaryYellow,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: const Column(
              children: <Widget>[
                Text(
                  'Hey There!',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Let\'s pick up where you left off.',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Buttons Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Login Button (Yellow)
                  SizedBox(
                    width: double.infinity,
                    height: 55.0,
                    child: ElevatedButton(
                      onPressed: navigateToLogin,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryYellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // Sign Up Button (Outlined/Text)
                  SizedBox(
                    width: double.infinity,
                    height: 55.0,
                    child: TextButton(
                      onPressed: navigateToSignup,
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          side: const BorderSide(
                            color: kPrimaryYellow,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryYellow,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
