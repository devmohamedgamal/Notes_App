import 'package:bloc/bloc.dart';
import 'package:flutter/Material.dart';
import 'package:meta/meta.dart';
import 'package:note_app/contants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = kPrimaryColor;

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSeccess());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
