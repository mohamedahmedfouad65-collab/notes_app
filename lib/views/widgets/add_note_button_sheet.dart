import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: addNoteForm()),
    );
  }
}

class addNoteForm extends StatefulWidget {
  const addNoteForm({super.key});

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

GlobalKey<FormState> globalKey = GlobalKey();

AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subtitle;

class _addNoteFormState extends State<addNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxLins: 4,
          ),
          SizedBox(height: 65),
          customBottum(
            onTap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
