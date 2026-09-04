import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
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
