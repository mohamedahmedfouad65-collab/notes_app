import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
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
    return BlocListener<AddNoteCubit, AddNoteCubitState>(
      listener: (context, state) {
        if (state is AddNoteCubitSuccess) {
          Navigator.pop(context);
        } else if (state is AddNoteCubitFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      child: Form(
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
                  context.read<AddNoteCubit>().addNote(
                    noteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.orange.value,
                    ),
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
