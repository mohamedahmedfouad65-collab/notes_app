import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class notesListView extends StatelessWidget {
  const notesListView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: notesItem(),
        );
      },
    );
  }
}
