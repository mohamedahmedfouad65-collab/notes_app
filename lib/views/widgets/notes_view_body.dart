import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return customAppBar();
  }
}
