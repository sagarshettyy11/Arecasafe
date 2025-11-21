import 'package:flutter/material.dart';
import '../constants.dart';

class SecureAccountPage extends StatelessWidget {
  const SecureAccountPage({super.key});

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
                    'Secure Account',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing sed diam nonummy nibh euismod tincidunt.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.0, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Form Card Section
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
                    // Birthday
                    const Text(
                      'Birthday',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),

                    // Birthday Dropdowns
                    Row(
                      children: [
                        Expanded(child: _buildDropdownField(hint: 'Day')),
                        const SizedBox(width: 10),
                        Expanded(child: _buildDropdownField(hint: 'Month')),
                        const SizedBox(width: 10),
                        Expanded(child: _buildDropdownField(hint: 'Year')),
                      ],
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
                        hintText: 'Create a password',
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
                    const SizedBox(height: 20.0),

                    // Phone Number Field
                    const Text(
                      'Phone Number',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: kTextFieldDecoration(
                        hintText: '1234 5678 9101',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 8.0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                '123',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: kSecondaryText,
                              ),
                              Container(
                                width: 1,
                                height: 20,
                                color: Colors.grey.shade300,
                                margin: const EdgeInsets.only(left: 8.0),
                              ),
                            ],
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),

                    // Security Question
                    const Text(
                      'Security Question',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    _buildDropdownField(hint: 'example1234'),
                    const SizedBox(height: 20.0),

                    // Answer Field
                    const Text(
                      'Your Answer...',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    TextField(
                      decoration: kTextFieldDecoration(
                        hintText: 'example1234',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 8.0),
                          child: Icon(
                            Icons.help_outline,
                            color: kSecondaryText,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),

                    // Create Account Button
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
                          'Create Account',
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
                          Navigator.popUntil(context, (route) => route.isFirst);
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

  // Helper widget to build the dropdown style field
  Widget _buildDropdownField({required String hint}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: const Color(0xFFE0E0E0), width: 1.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: null, // No initial value selected
          hint: Text(hint, style: TextStyle(color: kSecondaryText)),
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down, color: kSecondaryText),
          items: <String>['Option 1', 'Option 2', 'Option 3']
              .map(
                (String value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)),
              )
              .toList(),
          onChanged: (String? newValue) {
            // Handle selection
          },
        ),
      ),
    );
  }
}
