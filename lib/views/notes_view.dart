import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'widgets/add_note_widget.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/note_list_view.dart';

class NotesView extends StatefulWidget {
  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fechAllNote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              context: context,
              builder: (context) {
                return const AddNoteWidget();
              });
        },
        child: const Icon(FontAwesomeIcons.plus),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomAppBar(
              text: 'Notes',
              icon: Icons.search,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}
