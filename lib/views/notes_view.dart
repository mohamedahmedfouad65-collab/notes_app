import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 2, 183, 186),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}
