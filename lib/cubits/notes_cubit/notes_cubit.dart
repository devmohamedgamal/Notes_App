import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../contants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fatchAllNote() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(NoteSeccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(errMessage: e.toString()));
    }
  }
}
