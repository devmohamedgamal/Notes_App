import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/add_note_widget.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_note_item.dart';
import 'widgets/note_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(text: 'Notes',icon: Icons.search,),
            SizedBox(
              height: 10,
            ),
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}
