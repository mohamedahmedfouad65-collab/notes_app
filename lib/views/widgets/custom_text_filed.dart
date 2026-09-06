import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxLins = 2});
  final String hint;
  final int maxLins;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      maxLines: maxLins,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kprimaryColor),
        enabledBorder: builedBorder(),
        focusedBorder: builedBorder(color: kprimaryColor),
      ),
    );
  }
}

OutlineInputBorder builedBorder({Color color = Colors.white}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.circular(16),
  );
}
