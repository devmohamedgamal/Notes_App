import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(),
            SizedBox(
              height: 30,
            ),
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: CustomNoteItem(),
      );
    });
  }
}
