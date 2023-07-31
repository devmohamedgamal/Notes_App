import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_note_item.dart';

class NoteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
    return BlocConsumer<NotesCubit, NotesState>(
      listener: (context, state) {
        BlocProvider.of<NotesCubit>(context).fechAllNote();
      },
      builder: (context, state) {
        return BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: CustomNoteItem(
                    note: notes[index],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
