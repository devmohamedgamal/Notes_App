import 'package:flutter/material.dart';

import '../../contants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.text,
      required this.horizontal,
      required this.vertical});
  final String text;
  final double horizontal, vertical;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
        labelText: text,
        labelStyle: TextStyle(
          fontSize: 22,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
