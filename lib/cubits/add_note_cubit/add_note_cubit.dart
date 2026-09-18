import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  addNote(noteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesbox = Hive.box<noteModel>(kNotesBox);

      await notesbox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
