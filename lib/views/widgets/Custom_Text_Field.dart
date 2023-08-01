import 'package:flutter/material.dart';

import '../../contants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.onSaved,
    this.onChanged,
    this.editText = "",
    required this.maxLine,
  });
  final String text;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final String editText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(
        text: editText,
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Required";
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.7),
          ),
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
