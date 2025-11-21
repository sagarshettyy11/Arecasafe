import 'package:flutter/material.dart';
import '../constants.dart';
import 'secure_account.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
              padding: const EdgeInsets.only(top: 80.0, bottom: 60.0),
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
                    'Join Us',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Create Free Account',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Personal Info Card Section
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
                      'Personal Info',
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

                    const Text(
                      'Your Name',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),

                    // Name Row: First & Last Name
                    Row(
                      children: <Widget>[
                        // First Name
                        Expanded(
                          child: TextField(
                            decoration: kTextFieldDecoration(
                              hintText: 'First Name',
                              prefixIcon: const Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, right: 8.0),
                                child: Icon(
                                  Icons.person_outline,
                                  color: kSecondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        // Last Name
                        Expanded(
                          child: TextField(
                            decoration: kTextFieldDecoration(
                              hintText: 'Last Name',
                              prefixIcon: const Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, right: 8.0),
                                child: Icon(
                                  Icons.person_outline,
                                  color: kSecondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),

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
                      ),
                    ),
                    const SizedBox(height: 20.0),

                    // Username Field
                    const Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    TextField(
                      decoration: kTextFieldDecoration(
                        hintText: 'example1234',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 8.0),
                          child: Icon(
                            Icons.alternate_email,
                            color: kSecondaryText,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),

                    // Save & Continue Button
                    SizedBox(
                      width: double.infinity,
                      height: 55.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SecureAccountPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryYellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Save & Continue',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),

                    // Back to Login Link
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Back to Login',
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
