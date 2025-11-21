import 'package:flutter/material.dart';
import 'signup_page.dart';
import '../constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    'Hello',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Login Card Section
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kBorderRadius * 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Login Account',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing sed diam nonummy nibh euismod tincidunt.',
                      style: TextStyle(color: kSecondaryText, fontSize: 13.0),
                    ),
                    const SizedBox(height: 30.0),

                    // Email Field
                    const Text(
                      'Email Address',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    TextField(
                      decoration: kTextFieldDecoration(
                        hintText: 'Your Email Address',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 8.0),
                          child: Icon(
                            Icons.email_outlined,
                            color: kSecondaryText,
                          ),
                        ),
                        // suffixIcon is optional; omit instead of passing null
                      ),
                    ),
                    const SizedBox(height: 20.0),

                    // Password Field
                    const Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    TextField(
                      obscureText: true,
                      decoration: kTextFieldDecoration(
                        hintText: 'Enter your password',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 8.0),
                          child: Icon(
                            Icons.lock_outline,
                            color: kSecondaryText,
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: kSecondaryText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),

                    // Save Password & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.check_circle,
                              size: 18,
                              color: Colors.green,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              'Save Password',
                              style: TextStyle(color: kSecondaryText),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: kSecondaryText,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),

                    // Login Account Button
                    SizedBox(
                      width: double.infinity,
                      height: 55.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryYellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Login Account',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),

                    // Create New Account Link
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Create New Account',
                          style: TextStyle(
                            color: kSecondaryText,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
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
      ),
    );
  }
}
