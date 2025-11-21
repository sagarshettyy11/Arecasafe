import 'package:flutter/material.dart';

//The primary yellow color from the design
const Color kPrimaryYellow = Color.fromARGB(255, 255, 187, 52);
const Color kSecondaryText = Color(0xFF6A6A6A);

const double kBorderRadius = 12.0;

InputDecoration kTextFieldDecoration({String? hintText, Widget? suffixIcon, required Padding prefixIcon}) {
  return InputDecoration(
    hintText: hintText,
    suffixIcon: suffixIcon,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 20.0,
    ),
    filled: true,
    fillColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE0E0E0), width: 1.0),
      borderRadius: BorderRadius.circular(kBorderRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: kPrimaryYellow, width: 2.0),
      borderRadius: BorderRadius.circular(kBorderRadius),
    ),
  );
}
