import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            const CustomTextFiled(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextFiled(hint: 'Content', maxLins: 4),
            SizedBox(height: 65),
            customBottum(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
