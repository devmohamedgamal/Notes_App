part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSeccess extends NotesState {
  final List<NoteModel> notes;

  NoteSeccess({required this.notes});
}

class NoteFailure extends NotesState {
  final String errMessage;
  NoteFailure({required this.errMessage});
}
