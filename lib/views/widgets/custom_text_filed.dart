import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({
    super.key,
    required this.hint,
    this.maxLins = 2,
    this.onSaved,
  });
  final String hint;
  final int maxLins;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'value is required';
        } else {
          return null;
        }
      },
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
